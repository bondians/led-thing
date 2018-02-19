{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module Proto.LedThing.WriteChannelRequest (WriteChannelRequest(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data WriteChannelRequest = WriteChannelRequest{request_id :: !(P'.Maybe P'.Word32), channel :: !(P'.Maybe P'.Word32),
                                               offset :: !(P'.Maybe P'.Word32), data' :: !(P'.Maybe P'.ByteString)}
                         deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable WriteChannelRequest where
  mergeAppend (WriteChannelRequest x'1 x'2 x'3 x'4) (WriteChannelRequest y'1 y'2 y'3 y'4)
   = WriteChannelRequest (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)

instance P'.Default WriteChannelRequest where
  defaultValue = WriteChannelRequest P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue

instance P'.Wire WriteChannelRequest where
  wireSize ft' self'@(WriteChannelRequest x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 13 x'1 + P'.wireSizeOpt 1 13 x'2 + P'.wireSizeOpt 1 13 x'3 + P'.wireSizeOpt 1 12 x'4)
  wirePut ft' self'@(WriteChannelRequest x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 8 13 x'1
             P'.wirePutOpt 16 13 x'2
             P'.wirePutOpt 24 13 x'3
             P'.wirePutOpt 34 12 x'4
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{request_id = Prelude'.Just new'Field}) (P'.wireGet 13)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{channel = Prelude'.Just new'Field}) (P'.wireGet 13)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{offset = Prelude'.Just new'Field}) (P'.wireGet 13)
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{data' = Prelude'.Just new'Field}) (P'.wireGet 12)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> WriteChannelRequest) WriteChannelRequest where
  getVal m' f' = f' m'

instance P'.GPB WriteChannelRequest

instance P'.ReflectDescriptor WriteChannelRequest where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8, 16, 24, 34])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".LedThing.WriteChannelRequest\", haskellPrefix = [MName \"Proto\"], parentModule = [MName \"LedThing\"], baseName = MName \"WriteChannelRequest\"}, descFilePath = [\"Proto\",\"LedThing\",\"WriteChannelRequest.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LedThing.WriteChannelRequest.request_id\", haskellPrefix' = [MName \"Proto\"], parentModule' = [MName \"LedThing\",MName \"WriteChannelRequest\"], baseName' = FName \"request_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LedThing.WriteChannelRequest.channel\", haskellPrefix' = [MName \"Proto\"], parentModule' = [MName \"LedThing\",MName \"WriteChannelRequest\"], baseName' = FName \"channel\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LedThing.WriteChannelRequest.offset\", haskellPrefix' = [MName \"Proto\"], parentModule' = [MName \"LedThing\",MName \"WriteChannelRequest\"], baseName' = FName \"offset\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LedThing.WriteChannelRequest.data\", haskellPrefix' = [MName \"Proto\"], parentModule' = [MName \"LedThing\",MName \"WriteChannelRequest\"], baseName' = FName \"data'\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 12}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"

instance P'.TextType WriteChannelRequest where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg WriteChannelRequest where
  textPut msg
   = do
       P'.tellT "request_id" (request_id msg)
       P'.tellT "channel" (channel msg)
       P'.tellT "offset" (offset msg)
       P'.tellT "data" (data' msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'request_id, parse'channel, parse'offset, parse'data']) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'request_id
         = P'.try
            (do
               v <- P'.getT "request_id"
               Prelude'.return (\ o -> o{request_id = v}))
        parse'channel
         = P'.try
            (do
               v <- P'.getT "channel"
               Prelude'.return (\ o -> o{channel = v}))
        parse'offset
         = P'.try
            (do
               v <- P'.getT "offset"
               Prelude'.return (\ o -> o{offset = v}))
        parse'data'
         = P'.try
            (do
               v <- P'.getT "data"
               Prelude'.return (\ o -> o{data' = v}))