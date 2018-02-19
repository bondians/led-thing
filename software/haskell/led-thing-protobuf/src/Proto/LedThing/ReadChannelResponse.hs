{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module Proto.LedThing.ReadChannelResponse (ReadChannelResponse(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Proto.LedThing.ResultStatus as LedThing (ResultStatus)

data ReadChannelResponse = ReadChannelResponse{request_id :: !(P'.Maybe P'.Word32), status :: !(P'.Maybe LedThing.ResultStatus),
                                               status_message :: !(P'.Maybe P'.Utf8), data' :: !(P'.Maybe P'.ByteString)}
                         deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable ReadChannelResponse where
  mergeAppend (ReadChannelResponse x'1 x'2 x'3 x'4) (ReadChannelResponse y'1 y'2 y'3 y'4)
   = ReadChannelResponse (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)

instance P'.Default ReadChannelResponse where
  defaultValue = ReadChannelResponse P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue

instance P'.Wire ReadChannelResponse where
  wireSize ft' self'@(ReadChannelResponse x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 13 x'1 + P'.wireSizeOpt 1 14 x'2 + P'.wireSizeOpt 1 9 x'3 + P'.wireSizeOpt 1 12 x'4)
  wirePut ft' self'@(ReadChannelResponse x'1 x'2 x'3 x'4)
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
             P'.wirePutOpt 16 14 x'2
             P'.wirePutOpt 26 9 x'3
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
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{status = Prelude'.Just new'Field}) (P'.wireGet 14)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{status_message = Prelude'.Just new'Field}) (P'.wireGet 9)
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{data' = Prelude'.Just new'Field}) (P'.wireGet 12)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> ReadChannelResponse) ReadChannelResponse where
  getVal m' f' = f' m'

instance P'.GPB ReadChannelResponse

instance P'.ReflectDescriptor ReadChannelResponse where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8, 16, 26, 34])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".LedThing.ReadChannelResponse\", haskellPrefix = [MName \"Proto\"], parentModule = [MName \"LedThing\"], baseName = MName \"ReadChannelResponse\"}, descFilePath = [\"Proto\",\"LedThing\",\"ReadChannelResponse.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LedThing.ReadChannelResponse.request_id\", haskellPrefix' = [MName \"Proto\"], parentModule' = [MName \"LedThing\",MName \"ReadChannelResponse\"], baseName' = FName \"request_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LedThing.ReadChannelResponse.status\", haskellPrefix' = [MName \"Proto\"], parentModule' = [MName \"LedThing\",MName \"ReadChannelResponse\"], baseName' = FName \"status\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".LedThing.ResultStatus\", haskellPrefix = [MName \"Proto\"], parentModule = [MName \"LedThing\"], baseName = MName \"ResultStatus\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LedThing.ReadChannelResponse.status_message\", haskellPrefix' = [MName \"Proto\"], parentModule' = [MName \"LedThing\",MName \"ReadChannelResponse\"], baseName' = FName \"status_message\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LedThing.ReadChannelResponse.data\", haskellPrefix' = [MName \"Proto\"], parentModule' = [MName \"LedThing\",MName \"ReadChannelResponse\"], baseName' = FName \"data'\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 12}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"

instance P'.TextType ReadChannelResponse where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg ReadChannelResponse where
  textPut msg
   = do
       P'.tellT "request_id" (request_id msg)
       P'.tellT "status" (status msg)
       P'.tellT "status_message" (status_message msg)
       P'.tellT "data" (data' msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'request_id, parse'status, parse'status_message, parse'data']) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'request_id
         = P'.try
            (do
               v <- P'.getT "request_id"
               Prelude'.return (\ o -> o{request_id = v}))
        parse'status
         = P'.try
            (do
               v <- P'.getT "status"
               Prelude'.return (\ o -> o{status = v}))
        parse'status_message
         = P'.try
            (do
               v <- P'.getT "status_message"
               Prelude'.return (\ o -> o{status_message = v}))
        parse'data'
         = P'.try
            (do
               v <- P'.getT "data"
               Prelude'.return (\ o -> o{data' = v}))