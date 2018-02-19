{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module Proto.LedThing.HelloRequest (HelloRequest(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Proto.LedThing.ProtocolVersion as LedThing (ProtocolVersion)

data HelloRequest = HelloRequest{request_id :: !(P'.Maybe P'.Word32), protocol_version :: !(P'.Maybe LedThing.ProtocolVersion)}
                  deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable HelloRequest where
  mergeAppend (HelloRequest x'1 x'2) (HelloRequest y'1 y'2) = HelloRequest (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)

instance P'.Default HelloRequest where
  defaultValue = HelloRequest P'.defaultValue P'.defaultValue

instance P'.Wire HelloRequest where
  wireSize ft' self'@(HelloRequest x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 13 x'1 + P'.wireSizeOpt 1 14 x'2)
  wirePut ft' self'@(HelloRequest x'1 x'2)
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
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{request_id = Prelude'.Just new'Field}) (P'.wireGet 13)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{protocol_version = Prelude'.Just new'Field}) (P'.wireGet 14)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> HelloRequest) HelloRequest where
  getVal m' f' = f' m'

instance P'.GPB HelloRequest

instance P'.ReflectDescriptor HelloRequest where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8, 16])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".LedThing.HelloRequest\", haskellPrefix = [MName \"Proto\"], parentModule = [MName \"LedThing\"], baseName = MName \"HelloRequest\"}, descFilePath = [\"Proto\",\"LedThing\",\"HelloRequest.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LedThing.HelloRequest.request_id\", haskellPrefix' = [MName \"Proto\"], parentModule' = [MName \"LedThing\",MName \"HelloRequest\"], baseName' = FName \"request_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LedThing.HelloRequest.protocol_version\", haskellPrefix' = [MName \"Proto\"], parentModule' = [MName \"LedThing\",MName \"HelloRequest\"], baseName' = FName \"protocol_version\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".LedThing.ProtocolVersion\", haskellPrefix = [MName \"Proto\"], parentModule = [MName \"LedThing\"], baseName = MName \"ProtocolVersion\"}), hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"

instance P'.TextType HelloRequest where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg HelloRequest where
  textPut msg
   = do
       P'.tellT "request_id" (request_id msg)
       P'.tellT "protocol_version" (protocol_version msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'request_id, parse'protocol_version]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'request_id
         = P'.try
            (do
               v <- P'.getT "request_id"
               Prelude'.return (\ o -> o{request_id = v}))
        parse'protocol_version
         = P'.try
            (do
               v <- P'.getT "protocol_version"
               Prelude'.return (\ o -> o{protocol_version = v}))