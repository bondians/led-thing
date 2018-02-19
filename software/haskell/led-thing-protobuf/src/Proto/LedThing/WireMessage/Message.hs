{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module Proto.LedThing.WireMessage.Message where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Proto.LedThing.CreateChannelRequest as LedThing (CreateChannelRequest)
import qualified Proto.LedThing.CreateChannelResponse as LedThing (CreateChannelResponse)
import qualified Proto.LedThing.DeleteChannelRequest as LedThing (DeleteChannelRequest)
import qualified Proto.LedThing.DeleteChannelResponse as LedThing (DeleteChannelResponse)
import qualified Proto.LedThing.HelloRequest as LedThing (HelloRequest)
import qualified Proto.LedThing.HelloResponse as LedThing (HelloResponse)
import qualified Proto.LedThing.ListChannelsRequest as LedThing (ListChannelsRequest)
import qualified Proto.LedThing.ListChannelsResponse as LedThing (ListChannelsResponse)
import qualified Proto.LedThing.ReadChannelRequest as LedThing (ReadChannelRequest)
import qualified Proto.LedThing.ReadChannelResponse as LedThing (ReadChannelResponse)
import qualified Proto.LedThing.WriteChannelRequest as LedThing (WriteChannelRequest)
import qualified Proto.LedThing.WriteChannelResponse as LedThing (WriteChannelResponse)

data Message = Hello_request{hello_request :: (LedThing.HelloRequest)}
             | Hello_response{hello_response :: (LedThing.HelloResponse)}
             | List_channels_request{list_channels_request :: (LedThing.ListChannelsRequest)}
             | List_channels_response{list_channels_response :: (LedThing.ListChannelsResponse)}
             | Create_channel_request{create_channel_request :: (LedThing.CreateChannelRequest)}
             | Create_channel_response{create_channel_response :: (LedThing.CreateChannelResponse)}
             | Delete_channel_request{delete_channel_request :: (LedThing.DeleteChannelRequest)}
             | Delete_channel_response{delete_channel_response :: (LedThing.DeleteChannelResponse)}
             | Read_channel_request{read_channel_request :: (LedThing.ReadChannelRequest)}
             | Read_channel_response{read_channel_response :: (LedThing.ReadChannelResponse)}
             | Write_channel_request{write_channel_request :: (LedThing.WriteChannelRequest)}
             | Write_channel_response{write_channel_response :: (LedThing.WriteChannelResponse)}
             deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)
get'hello_request x
 = case x of
     Hello_request hello_request -> Prelude'.Just hello_request
     _ -> Prelude'.Nothing
get'hello_response x
 = case x of
     Hello_response hello_response -> Prelude'.Just hello_response
     _ -> Prelude'.Nothing
get'list_channels_request x
 = case x of
     List_channels_request list_channels_request -> Prelude'.Just list_channels_request
     _ -> Prelude'.Nothing
get'list_channels_response x
 = case x of
     List_channels_response list_channels_response -> Prelude'.Just list_channels_response
     _ -> Prelude'.Nothing
get'create_channel_request x
 = case x of
     Create_channel_request create_channel_request -> Prelude'.Just create_channel_request
     _ -> Prelude'.Nothing
get'create_channel_response x
 = case x of
     Create_channel_response create_channel_response -> Prelude'.Just create_channel_response
     _ -> Prelude'.Nothing
get'delete_channel_request x
 = case x of
     Delete_channel_request delete_channel_request -> Prelude'.Just delete_channel_request
     _ -> Prelude'.Nothing
get'delete_channel_response x
 = case x of
     Delete_channel_response delete_channel_response -> Prelude'.Just delete_channel_response
     _ -> Prelude'.Nothing
get'read_channel_request x
 = case x of
     Read_channel_request read_channel_request -> Prelude'.Just read_channel_request
     _ -> Prelude'.Nothing
get'read_channel_response x
 = case x of
     Read_channel_response read_channel_response -> Prelude'.Just read_channel_response
     _ -> Prelude'.Nothing
get'write_channel_request x
 = case x of
     Write_channel_request write_channel_request -> Prelude'.Just write_channel_request
     _ -> Prelude'.Nothing
get'write_channel_response x
 = case x of
     Write_channel_response write_channel_response -> Prelude'.Just write_channel_response
     _ -> Prelude'.Nothing

instance P'.Default Message where
  defaultValue = Hello_request P'.defaultValue

instance P'.Mergeable Message