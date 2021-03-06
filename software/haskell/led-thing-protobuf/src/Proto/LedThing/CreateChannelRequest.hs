{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module Proto.LedThing.CreateChannelRequest (CreateChannelRequest(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Proto.LedThing.ChannelStructure as LedThing (ChannelStructure)

data CreateChannelRequest = CreateChannelRequest{request_id :: !(P'.Maybe P'.Word32),
                                                 channel :: !(P'.Maybe LedThing.ChannelStructure)}
                          deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable CreateChannelRequest where
  mergeAppend (CreateChannelRequest x'1 x'2) (CreateChannelRequest y'1 y'2)
   = CreateChannelRequest (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)

instance P'.Default CreateChannelRequest where
  defaultValue = CreateChannelRequest P'.defaultValue P'.defaultValue

instance P'.Wire CreateChannelRequest where
  wireSize ft' self'@(CreateChannelRequest x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 13 x'1 + P'.wireSizeOpt 1 11 x'2)
  wirePut ft' self'@(CreateChannelRequest x'1 x'2)
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
             P'.wirePutOpt 18 11 x'2
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{request_id = Prelude'.Just new'Field}) (P'.wireGet 13)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{channel = P'.mergeAppend (channel old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> CreateChannelRequest) CreateChannelRequest where
  getVal m' f' = f' m'

instance P'.GPB CreateChannelRequest

instance P'.ReflectDescriptor CreateChannelRequest where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".LedThing.CreateChannelRequest\", haskellPrefix = [MName \"Proto\"], parentModule = [MName \"LedThing\"], baseName = MName \"CreateChannelRequest\"}, descFilePath = [\"Proto\",\"LedThing\",\"CreateChannelRequest.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LedThing.CreateChannelRequest.request_id\", haskellPrefix' = [MName \"Proto\"], parentModule' = [MName \"LedThing\",MName \"CreateChannelRequest\"], baseName' = FName \"request_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LedThing.CreateChannelRequest.channel\", haskellPrefix' = [MName \"Proto\"], parentModule' = [MName \"LedThing\",MName \"CreateChannelRequest\"], baseName' = FName \"channel\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".LedThing.ChannelStructure\", haskellPrefix = [MName \"Proto\"], parentModule = [MName \"LedThing\"], baseName = MName \"ChannelStructure\"}), hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"

instance P'.TextType CreateChannelRequest where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg CreateChannelRequest where
  textPut msg
   = do
       P'.tellT "request_id" (request_id msg)
       P'.tellT "channel" (channel msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'request_id, parse'channel]) P'.spaces
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