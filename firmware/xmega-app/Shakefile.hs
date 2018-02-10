#!/usr/bin/env runhaskell
module Main where

import Prelude hiding ((*>))
import Control.Monad
import Data.List
import Development.Shake
import Development.Shake.AVR
import Development.Shake.FilePath

srcDir              = "src"
asfDir              = "ext/asf"
cobsDir             = "ext/cobs-c"
libprotobufDir      = "ext/protobuf-c"
protothreadsDir     = "ext/pt-1.4"
buildRoot           = "build"

asfBuildDir         = buildRoot </> "asf"
cobsBuildDir        = buildRoot </> "cobs-c"
libprotobufBuildDir = buildRoot </> "libprotobuf"
protobufBuildDir    = buildRoot </> "protobuf"
localBuildDir       = buildRoot </> "local"

elfFile             = "led-thing-xmega.elf"
mapFile             = "led-thing-xmega.map"

device              = "atxmega32a4u"

avrdudeFlags        = ["-c", "flip2", "-E", "reset"]

commonFlags         = ["-pipe", "-mmcu=" ++ device] ++ optFlags
optFlags            = ["-Os", "-ffunction-sections", "-fdata-sections"]

includes            = ["conf", "src", protobufBuildDir, cobsDir, libprotobufDir, protothreadsDir] ++ map (asfDir </>) asfIncludes
defines             = ["LC_INCLUDE=\"lc-addrlabels.h\""] ++ asfDefines

cppFlags            = map ("-D" ++) defines ++ map ("-I" ++) includes

cFlags = commonFlags ++ cppFlags ++ ["-Wall", "-Werror", "-mrelax", "-std=gnu99"]

asFlags = commonFlags ++ cppFlags
    ++ ["-x", "assembler-with-cpp", "-mrelax", "-D__ASSEMBLY__"]
    ++ map (("-Wa,-I" ++) . (asfDir </>)) asfIncludes

ldFlags = commonFlags ++ ["-Wl,--relax", "-Wl,--gc-sections", "-Wl,--section-start=.BOOT=0x20000"]
    ++ ["-Wl,-Map=" ++ mapFile ++ ",--cref"]

asfDefines =
    [ "BOARD=USER_BOARD"
    ]

asfIncludes =
    [ "common/boards"
    , "common/boards/user_board"
    , "common/services/clock"
    , "common/services/ioport"
    , "common/services/sleepmgr"
    , "common/services/usb"
    , "common/services/usb/class/cdc"
    , "common/services/usb/class/cdc/device"
    , "common/services/usb/udc"
    , "common/utils"
    , "xmega/drivers/cpu"
    , "xmega/drivers/nvm"
    , "xmega/drivers/pmic"
    , "xmega/drivers/sleep"
    , "xmega/utils"
    , "xmega/utils/preprocessor"
    ]

asfSources =
    [ "common/services/clock/xmega/sysclk.c"
    , "common/services/sleepmgr/xmega/sleepmgr.c"
    , "common/services/usb/class/cdc/device/udi_cdc.c"
    , "common/services/usb/class/cdc/device/udi_cdc_desc.c"
    , "common/services/usb/udc/udc.c"
    , "xmega/drivers/cpu/ccp.s"
    , "xmega/drivers/nvm/nvm_asm.s"
    , "xmega/drivers/usb/usb_device.c"
    ]

cobsSources =
    [ "cobs.c"
    , "cobsr.c"
    ]

libprotobufSources =
    [ "protobuf-c/protobuf-c.c"
    ]

-- defines rules to compile from a source dir to a build dir, mirroring
-- the directory layout, appending '.o' to all source names, and
-- invoking known compilers as needed.
compileRules fromDir toDir = 
    toDir ++ "//*.o" *> \out -> do
        src <- case stripPrefix toDir (dropExtension out) of
            Just ('/':rest) -> return (fromDir </> rest)
            _               -> fail $ unwords
                ["Build rule matched", show out,
                "which does not start with", show toDir]
        
        case takeExtension src of
            ".c" -> avr_gcc cFlags src out
            ".s" -> avr_gcc asFlags src out
            _   -> fail ("don't know how to compile this source: " ++ show src)

protobufRules fromDir toDir = do
    map (toDir++) ["//*.pb-c.c", "//*.pb-c.h"] &%> \[c,h] -> do
        let Just ('/':base) = stripPrefix toDir =<< stripExtension ".pb-c.c" c
            src = fromDir </> base <.> "proto"
        
        need [src]
        command_ [] "protoc-c" ["--c_out="++toDir, "-I" ++ fromDir, src]
    
    toDir ++ "//*.proto.o" *> \out -> do
        let Just base = stripExtension ".proto.o" out
        avr_gcc cFlags (base <.> "pb-c.c") out

main = shakeArgs shakeOptions $ do
    want ["size"]
    
    "size"      ~> avr_size elfFile
    "clean"     ~> removeFilesAfter "." [elfFile, mapFile, buildRoot]
    "veryclean" ~> do need ["clean"]; removeFilesAfter "." [asfDir]
    "flash"     ~> avrdude device avrdudeFlags (w Application elfFile)
    
    "fuses"     ~> do
        avrdude device avrdudeFlags $ sequence_
            [ w (FuseN n) elfFile
            | n <- [1,2,4,5]
            ]
    
    [elfFile, mapFile] &*> \_ -> do
        protobufSources <- getDirectoryFiles srcDir ["//*.proto"]
        localSources    <- getDirectoryFiles srcDir ["//*.c"]
        let objs = concat
                [ [protobufBuildDir     </> src <.> "o" | src <- protobufSources]
                , [localBuildDir        </> src <.> "o" | src <- localSources]
                , [asfBuildDir          </> src <.> "o" | src <- asfSources]
                , [cobsBuildDir         </> src <.> "o" | src <- cobsSources]
                , [libprotobufBuildDir  </> src <.> "o" | src <- libprotobufSources]
                ]
        avr_ld' "avr-gcc" ldFlags objs elfFile
    
    compileRules asfDir asfBuildDir
    compileRules cobsDir cobsBuildDir
    compileRules libprotobufDir libprotobufBuildDir
    protobufRules srcDir protobufBuildDir
    compileRules srcDir localBuildDir
