{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module Proto.LedThing.ChannelStructure (ChannelStructure(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified Proto.LedThing.ChannelDriver as LedThing (ChannelDriver)
import qualified Proto.LedThing.ChannelFormat as LedThing (ChannelFormat)

data ChannelStructure = ChannelStructure{channel_number :: !(P'.Maybe P'.Word32), format :: !(P'.Maybe LedThing.ChannelFormat),
                                         driver :: !(P'.Maybe LedThing.ChannelDriver), channel_count :: !(P'.Maybe P'.Word32)}
                      deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable ChannelStructure where
  mergeAppend (ChannelStructure x'1 x'2 x'3 x'4) (ChannelStructure y'1 y'2 y'3 y'4)
   = ChannelStructure (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)

instance P'.Default ChannelStructure where
  defaultValue = ChannelStructure P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue

instance P'.Wire ChannelStructure where
  wireSize ft' self'@(ChannelStructure x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 13 x'1 + P'.wireSizeOpt 1 14 x'2 + P'.wireSizeOpt 1 14 x'3 + P'.wireSizeOpt 1 13 x'4)
  wirePut ft' self'@(ChannelStructure x'1 x'2 x'3 x'4)
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
             P'.wirePutOpt 24 14 x'3
             P'.wirePutOpt 32 13 x'4
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith update'Self
       11 -> P'.getMessageWith update'Self
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{channel_number = Prelude'.Just new'Field}) (P'.wireGet 13)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{format = Prelude'.Just new'Field}) (P'.wireGet 14)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{driver = Prelude'.Just new'Field}) (P'.wireGet 14)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{channel_count = Prelude'.Just new'Field}) (P'.wireGet 13)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> ChannelStructure) ChannelStructure where
  getVal m' f' = f' m'

instance P'.GPB ChannelStructure

instance P'.ReflectDescriptor ChannelStructure where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8, 16, 24, 32])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".LedThing.ChannelStructure\", haskellPrefix = [MName \"Proto\"], parentModule = [MName \"LedThing\"], baseName = MName \"ChannelStructure\"}, descFilePath = [\"Proto\",\"LedThing\",\"ChannelStructure.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LedThing.ChannelStructure.channel_number\", haskellPrefix' = [MName \"Proto\"], parentModule' = [MName \"LedThing\",MName \"ChannelStructure\"], baseName' = FName \"channel_number\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LedThing.ChannelStructure.format\", haskellPrefix' = [MName \"Proto\"], parentModule' = [MName \"LedThing\",MName \"ChannelStructure\"], baseName' = FName \"format\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".LedThing.ChannelFormat\", haskellPrefix = [MName \"Proto\"], parentModule = [MName \"LedThing\"], baseName = MName \"ChannelFormat\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LedThing.ChannelStructure.driver\", haskellPrefix' = [MName \"Proto\"], parentModule' = [MName \"LedThing\",MName \"ChannelStructure\"], baseName' = FName \"driver\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".LedThing.ChannelDriver\", haskellPrefix = [MName \"Proto\"], parentModule = [MName \"LedThing\"], baseName = MName \"ChannelDriver\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LedThing.ChannelStructure.channel_count\", haskellPrefix' = [MName \"Proto\"], parentModule' = [MName \"LedThing\",MName \"ChannelStructure\"], baseName' = FName \"channel_count\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}"

instance P'.TextType ChannelStructure where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg ChannelStructure where
  textPut msg
   = do
       P'.tellT "channel_number" (channel_number msg)
       P'.tellT "format" (format msg)
       P'.tellT "driver" (driver msg)
       P'.tellT "channel_count" (channel_count msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'channel_number, parse'format, parse'driver, parse'channel_count]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'channel_number
         = P'.try
            (do
               v <- P'.getT "channel_number"
               Prelude'.return (\ o -> o{channel_number = v}))
        parse'format
         = P'.try
            (do
               v <- P'.getT "format"
               Prelude'.return (\ o -> o{format = v}))
        parse'driver
         = P'.try
            (do
               v <- P'.getT "driver"
               Prelude'.return (\ o -> o{driver = v}))
        parse'channel_count
         = P'.try
            (do
               v <- P'.getT "channel_count"
               Prelude'.return (\ o -> o{channel_count = v}))