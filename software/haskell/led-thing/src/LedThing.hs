{-# LANGUAGE GADTs #-}
{-# LANGUAGE RecordWildCards #-}
module LedThing
    ( LedThing
    ) where

-- NOTE: serial ports on Linux are teh suck.
-- if things are goofy, try 'stty -F /dev/ttyACM0 raw'

import qualified Data.ByteString as BS
import qualified Data.ByteString.Lazy as BL
import Codec.COBS
import Control.Concurrent
import Data.IORef
import qualified Data.Map as M
import System.IO
import System.Serial
import System.Timeout

data LedThingRequest where
    SendFrame :: BS.ByteString -> LedThingRequest
    CloseRequest :: LedThingRequest

data LedThing = LedThing
    { serial                :: Handle
    , requestChannel        :: Chan LedThingRequest
    , unsolicitedChannel    :: Chan ()
    }

delim = BS.pack [0]

connect :: FilePath -> IO LedThing
connect port = do
    serial <- openSerial port B115200 8 One NoParity NoFlowControl
    hSetEcho serial False
    hSetBuffering serial NoBuffering
    hSetBinaryMode serial True
    
    requestChannel <- newChan
    unsolicitedChannel <- newChan
    
    closed <- newIORef False
    
    pendingRequests <- newMVar M.empty
    
    recvBuf <- newMVar BL.empty
    
    let recvFrame frame = do
            putStrLn ("Received frame: " ++ show (BS.unpack (cobsrDecode (BL.toStrict frame))))
        
        recvBytes [] buf        = return buf
        recvBytes [f] buf       = return (BL.append buf (BL.fromStrict f))
        recvBytes (f:fs) buf    = do
            recvFrame (BL.append buf (BL.fromStrict f))
            recvBytes fs BL.empty
        
        recvThread = do
            closing <- readIORef closed
            if closing
                then return ()
                else do
                    mbBuf <- timeout 100000 (BS.hGetSome serial 4096)
                    case mbBuf of
                        Just bs | BS.null bs -> writeChan requestChannel CloseRequest
                        Nothing -> recvThread
                        Just bs -> do
                            modifyMVar_ recvBuf (recvBytes (BS.split 0 bs))
                            recvThread
        
        sendThread = do
            request <- readChan requestChannel
            case request of
                SendFrame frame -> do
                    BS.hPut serial (cobsrEncode frame)
                    BS.hPut serial delim
                    sendThread
                
                CloseRequest -> do
                    writeIORef closed True
        
        cleanupThread doneVars = do
            mapM_ takeMVar doneVars
            hClose serial
    
    recvThreadDone <- newMVar ()
    forkIO (withMVar recvThreadDone $ const recvThread)
    
    sendThreadDone <- newMVar ()
    forkIO (withMVar sendThreadDone $ const sendThread)
    
    forkIO (cleanupThread [recvThreadDone, sendThreadDone])
    
    return LedThing{..}

request LedThing{..} = writeChan requestChannel