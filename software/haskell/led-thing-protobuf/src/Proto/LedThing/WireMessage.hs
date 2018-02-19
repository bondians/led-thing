{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module Proto.LedThing.WireMessage (WireMessage(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Proto.LedThing.WireMessage.Message as LedThing.WireMessage (Message)
import qualified Proto.LedThing.WireMessage.Message as LedThing.WireMessage.Message
       (Message(..), get'hello_request, get'hello_response, get'list_channels_request, get'list_channels_response,
        get'create_channel_request, get'create_channel_response, get'delete_channel_request, get'delete_channel_response,
        get'read_channel_request, get'read_channel_response, get'write_channel_request, get'write_channel_response)

data WireMessage = WireMessage{message :: P'.Maybe (LedThing.WireMessage.Message)}
                 deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable WireMessage where
  mergeAppend (WireMessage x'1) (WireMessage y'1) = WireMessage (P'.mergeAppend x'1 y'1)

instance P'.Default WireMessage where
  defaultValue = WireMessage P'.defaultValue

instance P'.Wire WireMessage where
  wireSize ft' self'@(WireMessage x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 2 11 (LedThing.WireMessage.Message.get'hello_request Prelude'.=<< x'1) +
             P'.wireSizeOpt 2 11 (LedThing.WireMessage.Message.get'hello_response Prelude'.=<< x'1)
             + P'.wireSizeOpt 2 11 (LedThing.WireMessage.Message.get'list_channels_request Prelude'.=<< x'1)
             + P'.wireSizeOpt 2 11 (LedThing.WireMessage.Message.get'list_channels_response Prelude'.=<< x'1)
             + P'.wireSizeOpt 2 11 (LedThing.WireMessage.Message.get'create_channel_request Prelude'.=<< x'1)
             + P'.wireSizeOpt 2 11 (LedThing.WireMessage.Message.get'create_channel_response Prelude'.=<< x'1)
             + P'.wireSizeOpt 2 11 (LedThing.WireMessage.Message.get'delete_channel_request Prelude'.=<< x'1)
             + P'.wireSizeOpt 2 11 (LedThing.WireMessage.Message.get'delete_channel_response Prelude'.=<< x'1)
             + P'.wireSizeOpt 1 11 (LedThing.WireMessage.Message.get'read_channel_request Prelude'.=<< x'1)
             + P'.wireSizeOpt 1 11 (LedThing.WireMessage.Message.get'read_channel_response Prelude'.=<< x'1)
             + P'.wireSizeOpt 1 11 (LedThing.WireMessage.Message.get'write_channel_request Prelude'.=<< x'1)
             + P'.wireSizeOpt 1 11 (LedThing.WireMessage.Message.get'write_channel_response Prelude'.=<< x'1))
  wirePut ft' self'@(WireMessage x'1)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 10 11 (LedThing.WireMessage.Message.get'read_channel_request Prelude'.=<< x'1)
             P'.wirePutOpt 18 11 (LedThing.WireMessage.Message.get'read_channel_response Prelude'.=<< x'1)
             P'.wirePutOpt 26 11 (LedThing.WireMessage.Message.get'write_channel_request Prelude'.=<< x'1)
             P'.wirePutOpt 34 11 (LedThing.WireMessage.Message.get'write_channel_response Prelude'.=<< x'1)
             P'.wirePutOpt 802 11 (LedThing.WireMessage.Message.get'hello_request Prelude'.=<< x'1)
             P'.wirePutOpt 810 11 (LedThing.WireMessage.Message.get'hello_response Prelude'.=<< x'1)
             P'.wirePutOpt 818 11 (LedThing.WireMessage.Message.get'list_channels_request Prelude'.=<< x'1)
             P'.wirePutOpt 826 11 (LedThing.WireMessage.Message.get'list_channels_response Prelude'.=<< x'1)
             P'.wirePutOpt 834 11 (LedThing.WireMessage.Message.get'create_channel_request Prelude'.=<< x'1)
             P'.wirePutOpt 842 11 (LedThing.WireMessage.Message.get'create_channel_response Prelude'.=<< x'1)
             P'.wirePutOpt 850 11 (LedThing.WireMessage.Message.get'delete_channel_request Prelude'.=<< x'1)
             P'.wirePutOpt 858 11 (LedThing.WireMessage.Message.get'delete_channel_response Prelude'.=<< x'1)
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             802 -> Prelude'.fmap
                     (\ !new'Field ->
                       old'Self{message =
                                 P'.mergeAppend (message old'Self)
                                  (Prelude'.Just (LedThing.WireMessage.Message.Hello_request new'Field))})
                     (P'.wireGet 11)
             810 -> Prelude'.fmap
                     (\ !new'Field ->
                       old'Self{message =
                                 P'.mergeAppend (message old'Self)
                                  (Prelude'.Just (LedThing.WireMessage.Message.Hello_response new'Field))})
                     (P'.wireGet 11)
             818 -> Prelude'.fmap
                     (\ !new'Field ->
                       old'Self{message =
                                 P'.mergeAppend (message old'Self)
                                  (Prelude'.Just (LedThing.WireMessage.Message.List_channels_request new'Field))})
                     (P'.wireGet 11)
             826 -> Prelude'.fmap
                     (\ !new'Field ->
                       old'Self{message =
                                 P'.mergeAppend (message old'Self)
                                  (Prelude'.Just (LedThing.WireMessage.Message.List_channels_response new'Field))})
                     (P'.wireGet 11)
             834 -> Prelude'.fmap
                     (\ !new'Field ->
                       old'Self{message =
                                 P'.mergeAppend (message old'Self)
                                  (Prelude'.Just (LedThing.WireMessage.Message.Create_channel_request new'Field))})
                     (P'.wireGet 11)
             842 -> Prelude'.fmap
                     (\ !new'Field ->
                       old'Self{message =
                                 P'.mergeAppend (message old'Self)
                                  (Prelude'.Just (LedThing.WireMessage.Message.Create_channel_response new'Field))})
                     (P'.wireGet 11)
             850 -> Prelude'.fmap
                     (\ !new'Field ->
                       old'Self{message =
                                 P'.mergeAppend (message old'Self)
                                  (Prelude'.Just (LedThing.WireMessage.Message.Delete_channel_request new'Field))})
                     (P'.wireGet 11)
             858 -> Prelude'.fmap
                     (\ !new'Field ->
                       old'Self{message =
                                 P'.mergeAppend (message old'Self)
                                  (Prelude'.Just (LedThing.WireMessage.Message.Delete_channel_response new'Field))})
                     (P'.wireGet 11)
             10 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{message =
                                P'.mergeAppend (message old'Self)
                                 (Prelude'.Just (LedThing.WireMessage.Message.Read_channel_request new'Field))})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{message =
                                P'.mergeAppend (message old'Self)
                                 (Prelude'.Just (LedThing.WireMessage.Message.Read_channel_response new'Field))})
                    (P'.wireGet 11)
             26 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{message =
                                P'.mergeAppend (message old'Self)
                                 (Prelude'.Just (LedThing.WireMessage.Message.Write_channel_request new'Field))})
                    (P'.wireGet 11)
             34 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{message =
                                P'.mergeAppend (message old'Self)
                                 (Prelude'.Just (LedThing.WireMessage.Message.Write_channel_response new'Field))})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> WireMessage) WireMessage where
  getVal m' f' = f' m'

instance P'.GPB WireMessage

instance P'.ReflectDescriptor WireMessage where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".LedThing.WireMessage\", haskellPrefix = [MName \"Proto\"], parentModule = [MName \"LedThing\"], baseName = MName \"WireMessage\"}, descFilePath = [\"Proto\",\"LedThing\",\"WireMessage.hs\"], isGroup = False, fields = fromList [], descOneofs = fromList [OneofInfo {oneofName = ProtoName {protobufName = FIName \".LedThing.WireMessage.message\", haskellPrefix = [MName \"Proto\"], parentModule = [MName \"LedThing\",MName \"WireMessage\"], baseName = MName \"Message\"}, oneofFName = ProtoFName {protobufName' = FIName \".LedThing.WireMessage.message\", haskellPrefix' = [MName \"Proto\"], parentModule' = [MName \"LedThing\",MName \"WireMessage\"], baseName' = FName \"message\", baseNamePrefix' = \"\"}, oneofFilePath = [\"Proto\",\"LedThing\",\"WireMessage\",\"Message.hs\"], oneofFields = fromList [(ProtoName {protobufName = FIName \".LedThing.WireMessage.message.hello_request\", haskellPrefix = [MName \"Proto\"], parentModule = [MName \"LedThing\",MName \"WireMessage\",MName \"Message\"], baseName = MName \"Hello_request\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LedThing.WireMessage.message.hello_request\", haskellPrefix' = [MName \"Proto\"], parentModule' = [MName \"LedThing\",MName \"WireMessage\",MName \"Message\"], baseName' = FName \"hello_request\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 100}, wireTag = WireTag {getWireTag = 802}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".LedThing.HelloRequest\", haskellPrefix = [MName \"Proto\"], parentModule = [MName \"LedThing\"], baseName = MName \"HelloRequest\"}), hsRawDefault = Nothing, hsDefault = Nothing}),(ProtoName {protobufName = FIName \".LedThing.WireMessage.message.hello_response\", haskellPrefix = [MName \"Proto\"], parentModule = [MName \"LedThing\",MName \"WireMessage\",MName \"Message\"], baseName = MName \"Hello_response\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LedThing.WireMessage.message.hello_response\", haskellPrefix' = [MName \"Proto\"], parentModule' = [MName \"LedThing\",MName \"WireMessage\",MName \"Message\"], baseName' = FName \"hello_response\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 101}, wireTag = WireTag {getWireTag = 810}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".LedThing.HelloResponse\", haskellPrefix = [MName \"Proto\"], parentModule = [MName \"LedThing\"], baseName = MName \"HelloResponse\"}), hsRawDefault = Nothing, hsDefault = Nothing}),(ProtoName {protobufName = FIName \".LedThing.WireMessage.message.list_channels_request\", haskellPrefix = [MName \"Proto\"], parentModule = [MName \"LedThing\",MName \"WireMessage\",MName \"Message\"], baseName = MName \"List_channels_request\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LedThing.WireMessage.message.list_channels_request\", haskellPrefix' = [MName \"Proto\"], parentModule' = [MName \"LedThing\",MName \"WireMessage\",MName \"Message\"], baseName' = FName \"list_channels_request\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 102}, wireTag = WireTag {getWireTag = 818}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".LedThing.ListChannelsRequest\", haskellPrefix = [MName \"Proto\"], parentModule = [MName \"LedThing\"], baseName = MName \"ListChannelsRequest\"}), hsRawDefault = Nothing, hsDefault = Nothing}),(ProtoName {protobufName = FIName \".LedThing.WireMessage.message.list_channels_response\", haskellPrefix = [MName \"Proto\"], parentModule = [MName \"LedThing\",MName \"WireMessage\",MName \"Message\"], baseName = MName \"List_channels_response\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LedThing.WireMessage.message.list_channels_response\", haskellPrefix' = [MName \"Proto\"], parentModule' = [MName \"LedThing\",MName \"WireMessage\",MName \"Message\"], baseName' = FName \"list_channels_response\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 103}, wireTag = WireTag {getWireTag = 826}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".LedThing.ListChannelsResponse\", haskellPrefix = [MName \"Proto\"], parentModule = [MName \"LedThing\"], baseName = MName \"ListChannelsResponse\"}), hsRawDefault = Nothing, hsDefault = Nothing}),(ProtoName {protobufName = FIName \".LedThing.WireMessage.message.create_channel_request\", haskellPrefix = [MName \"Proto\"], parentModule = [MName \"LedThing\",MName \"WireMessage\",MName \"Message\"], baseName = MName \"Create_channel_request\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LedThing.WireMessage.message.create_channel_request\", haskellPrefix' = [MName \"Proto\"], parentModule' = [MName \"LedThing\",MName \"WireMessage\",MName \"Message\"], baseName' = FName \"create_channel_request\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 104}, wireTag = WireTag {getWireTag = 834}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".LedThing.CreateChannelRequest\", haskellPrefix = [MName \"Proto\"], parentModule = [MName \"LedThing\"], baseName = MName \"CreateChannelRequest\"}), hsRawDefault = Nothing, hsDefault = Nothing}),(ProtoName {protobufName = FIName \".LedThing.WireMessage.message.create_channel_response\", haskellPrefix = [MName \"Proto\"], parentModule = [MName \"LedThing\",MName \"WireMessage\",MName \"Message\"], baseName = MName \"Create_channel_response\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LedThing.WireMessage.message.create_channel_response\", haskellPrefix' = [MName \"Proto\"], parentModule' = [MName \"LedThing\",MName \"WireMessage\",MName \"Message\"], baseName' = FName \"create_channel_response\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 105}, wireTag = WireTag {getWireTag = 842}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".LedThing.CreateChannelResponse\", haskellPrefix = [MName \"Proto\"], parentModule = [MName \"LedThing\"], baseName = MName \"CreateChannelResponse\"}), hsRawDefault = Nothing, hsDefault = Nothing}),(ProtoName {protobufName = FIName \".LedThing.WireMessage.message.delete_channel_request\", haskellPrefix = [MName \"Proto\"], parentModule = [MName \"LedThing\",MName \"WireMessage\",MName \"Message\"], baseName = MName \"Delete_channel_request\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LedThing.WireMessage.message.delete_channel_request\", haskellPrefix' = [MName \"Proto\"], parentModule' = [MName \"LedThing\",MName \"WireMessage\",MName \"Message\"], baseName' = FName \"delete_channel_request\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 106}, wireTag = WireTag {getWireTag = 850}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".LedThing.DeleteChannelRequest\", haskellPrefix = [MName \"Proto\"], parentModule = [MName \"LedThing\"], baseName = MName \"DeleteChannelRequest\"}), hsRawDefault = Nothing, hsDefault = Nothing}),(ProtoName {protobufName = FIName \".LedThing.WireMessage.message.delete_channel_response\", haskellPrefix = [MName \"Proto\"], parentModule = [MName \"LedThing\",MName \"WireMessage\",MName \"Message\"], baseName = MName \"Delete_channel_response\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LedThing.WireMessage.message.delete_channel_response\", haskellPrefix' = [MName \"Proto\"], parentModule' = [MName \"LedThing\",MName \"WireMessage\",MName \"Message\"], baseName' = FName \"delete_channel_response\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 107}, wireTag = WireTag {getWireTag = 858}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".LedThing.DeleteChannelResponse\", haskellPrefix = [MName \"Proto\"], parentModule = [MName \"LedThing\"], baseName = MName \"DeleteChannelResponse\"}), hsRawDefault = Nothing, hsDefault = Nothing}),(ProtoName {protobufName = FIName \".LedThing.WireMessage.message.read_channel_request\", haskellPrefix = [MName \"Proto\"], parentModule = [MName \"LedThing\",MName \"WireMessage\",MName \"Message\"], baseName = MName \"Read_channel_request\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LedThing.WireMessage.message.read_channel_request\", haskellPrefix' = [MName \"Proto\"], parentModule' = [MName \"LedThing\",MName \"WireMessage\",MName \"Message\"], baseName' = FName \"read_channel_request\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".LedThing.ReadChannelRequest\", haskellPrefix = [MName \"Proto\"], parentModule = [MName \"LedThing\"], baseName = MName \"ReadChannelRequest\"}), hsRawDefault = Nothing, hsDefault = Nothing}),(ProtoName {protobufName = FIName \".LedThing.WireMessage.message.read_channel_response\", haskellPrefix = [MName \"Proto\"], parentModule = [MName \"LedThing\",MName \"WireMessage\",MName \"Message\"], baseName = MName \"Read_channel_response\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LedThing.WireMessage.message.read_channel_response\", haskellPrefix' = [MName \"Proto\"], parentModule' = [MName \"LedThing\",MName \"WireMessage\",MName \"Message\"], baseName' = FName \"read_channel_response\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".LedThing.ReadChannelResponse\", haskellPrefix = [MName \"Proto\"], parentModule = [MName \"LedThing\"], baseName = MName \"ReadChannelResponse\"}), hsRawDefault = Nothing, hsDefault = Nothing}),(ProtoName {protobufName = FIName \".LedThing.WireMessage.message.write_channel_request\", haskellPrefix = [MName \"Proto\"], parentModule = [MName \"LedThing\",MName \"WireMessage\",MName \"Message\"], baseName = MName \"Write_channel_request\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LedThing.WireMessage.message.write_channel_request\", haskellPrefix' = [MName \"Proto\"], parentModule' = [MName \"LedThing\",MName \"WireMessage\",MName \"Message\"], baseName' = FName \"write_channel_request\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".LedThing.WriteChannelRequest\", haskellPrefix = [MName \"Proto\"], parentModule = [MName \"LedThing\"], baseName = MName \"WriteChannelRequest\"}), hsRawDefault = Nothing, hsDefault = Nothing}),(ProtoName {protobufName = FIName \".LedThing.WireMessage.message.write_channel_response\", haskellPrefix = [MName \"Proto\"], parentModule = [MName \"LedThing\",MName \"WireMessage\",MName \"Message\"], baseName = MName \"Write_channel_response\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LedThing.WireMessage.message.write_channel_response\", haskellPrefix' = [MName \"Proto\"], parentModule' = [MName \"LedThing\",MName \"WireMessage\",MName \"Message\"], baseName' = FName \"write_channel_response\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".LedThing.WriteChannelResponse\", haskellPrefix = [MName \"Proto\"], parentModule = [MName \"LedThing\"], baseName = MName \"WriteChannelResponse\"}), hsRawDefault = Nothing, hsDefault = Nothing})], oneofMakeLenses = False}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"

instance P'.TextType WireMessage where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg WireMessage where
  textPut msg
   = do
       case (message msg) of
         Prelude'.Just (LedThing.WireMessage.Message.Hello_request hello_request) -> P'.tellT "hello_request" hello_request
         Prelude'.Just (LedThing.WireMessage.Message.Hello_response hello_response) -> P'.tellT "hello_response" hello_response
         Prelude'.Just (LedThing.WireMessage.Message.List_channels_request list_channels_request) -> P'.tellT
                                                                                                      "list_channels_request"
                                                                                                      list_channels_request
         Prelude'.Just (LedThing.WireMessage.Message.List_channels_response list_channels_response) -> P'.tellT
                                                                                                        "list_channels_response"
                                                                                                        list_channels_response
         Prelude'.Just (LedThing.WireMessage.Message.Create_channel_request create_channel_request) -> P'.tellT
                                                                                                        "create_channel_request"
                                                                                                        create_channel_request
         Prelude'.Just (LedThing.WireMessage.Message.Create_channel_response create_channel_response) -> P'.tellT
                                                                                                          "create_channel_response"
                                                                                                          create_channel_response
         Prelude'.Just (LedThing.WireMessage.Message.Delete_channel_request delete_channel_request) -> P'.tellT
                                                                                                        "delete_channel_request"
                                                                                                        delete_channel_request
         Prelude'.Just (LedThing.WireMessage.Message.Delete_channel_response delete_channel_response) -> P'.tellT
                                                                                                          "delete_channel_response"
                                                                                                          delete_channel_response
         Prelude'.Just (LedThing.WireMessage.Message.Read_channel_request read_channel_request) -> P'.tellT "read_channel_request"
                                                                                                    read_channel_request
         Prelude'.Just (LedThing.WireMessage.Message.Read_channel_response read_channel_response) -> P'.tellT
                                                                                                      "read_channel_response"
                                                                                                      read_channel_response
         Prelude'.Just (LedThing.WireMessage.Message.Write_channel_request write_channel_request) -> P'.tellT
                                                                                                      "write_channel_request"
                                                                                                      write_channel_request
         Prelude'.Just (LedThing.WireMessage.Message.Write_channel_response write_channel_response) -> P'.tellT
                                                                                                        "write_channel_response"
                                                                                                        write_channel_response
         Prelude'.Nothing -> Prelude'.return ()
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'message]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'message
         = P'.try
            (P'.choice
              [parse'hello_request, parse'hello_response, parse'list_channels_request, parse'list_channels_response,
               parse'create_channel_request, parse'create_channel_response, parse'delete_channel_request,
               parse'delete_channel_response, parse'read_channel_request, parse'read_channel_response, parse'write_channel_request,
               parse'write_channel_response])
          where
              parse'hello_request
               = P'.try
                  (do
                     v <- P'.getT "hello_request"
                     Prelude'.return (\ s -> s{message = Prelude'.Just (LedThing.WireMessage.Message.Hello_request v)}))
              parse'hello_response
               = P'.try
                  (do
                     v <- P'.getT "hello_response"
                     Prelude'.return (\ s -> s{message = Prelude'.Just (LedThing.WireMessage.Message.Hello_response v)}))
              parse'list_channels_request
               = P'.try
                  (do
                     v <- P'.getT "list_channels_request"
                     Prelude'.return (\ s -> s{message = Prelude'.Just (LedThing.WireMessage.Message.List_channels_request v)}))
              parse'list_channels_response
               = P'.try
                  (do
                     v <- P'.getT "list_channels_response"
                     Prelude'.return (\ s -> s{message = Prelude'.Just (LedThing.WireMessage.Message.List_channels_response v)}))
              parse'create_channel_request
               = P'.try
                  (do
                     v <- P'.getT "create_channel_request"
                     Prelude'.return (\ s -> s{message = Prelude'.Just (LedThing.WireMessage.Message.Create_channel_request v)}))
              parse'create_channel_response
               = P'.try
                  (do
                     v <- P'.getT "create_channel_response"
                     Prelude'.return (\ s -> s{message = Prelude'.Just (LedThing.WireMessage.Message.Create_channel_response v)}))
              parse'delete_channel_request
               = P'.try
                  (do
                     v <- P'.getT "delete_channel_request"
                     Prelude'.return (\ s -> s{message = Prelude'.Just (LedThing.WireMessage.Message.Delete_channel_request v)}))
              parse'delete_channel_response
               = P'.try
                  (do
                     v <- P'.getT "delete_channel_response"
                     Prelude'.return (\ s -> s{message = Prelude'.Just (LedThing.WireMessage.Message.Delete_channel_response v)}))
              parse'read_channel_request
               = P'.try
                  (do
                     v <- P'.getT "read_channel_request"
                     Prelude'.return (\ s -> s{message = Prelude'.Just (LedThing.WireMessage.Message.Read_channel_request v)}))
              parse'read_channel_response
               = P'.try
                  (do
                     v <- P'.getT "read_channel_response"
                     Prelude'.return (\ s -> s{message = Prelude'.Just (LedThing.WireMessage.Message.Read_channel_response v)}))
              parse'write_channel_request
               = P'.try
                  (do
                     v <- P'.getT "write_channel_request"
                     Prelude'.return (\ s -> s{message = Prelude'.Just (LedThing.WireMessage.Message.Write_channel_request v)}))
              parse'write_channel_response
               = P'.try
                  (do
                     v <- P'.getT "write_channel_response"
                     Prelude'.return (\ s -> s{message = Prelude'.Just (LedThing.WireMessage.Message.Write_channel_response v)}))