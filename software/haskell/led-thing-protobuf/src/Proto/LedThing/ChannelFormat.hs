{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module Proto.LedThing.ChannelFormat (ChannelFormat(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data ChannelFormat = SCALAR
                   | RGB
                   | RGBW
                   deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                             Prelude'.Generic)

instance P'.Mergeable ChannelFormat

instance Prelude'.Bounded ChannelFormat where
  minBound = SCALAR
  maxBound = RGBW

instance P'.Default ChannelFormat where
  defaultValue = SCALAR

toMaybe'Enum :: Prelude'.Int -> P'.Maybe ChannelFormat
toMaybe'Enum 0 = Prelude'.Just SCALAR
toMaybe'Enum 1 = Prelude'.Just RGB
toMaybe'Enum 2 = Prelude'.Just RGBW
toMaybe'Enum _ = Prelude'.Nothing

instance Prelude'.Enum ChannelFormat where
  fromEnum SCALAR = 0
  fromEnum RGB = 1
  fromEnum RGBW = 2
  toEnum
   = P'.fromMaybe (Prelude'.error "hprotoc generated code: toEnum failure for type Proto.LedThing.ChannelFormat") . toMaybe'Enum
  succ SCALAR = RGB
  succ RGB = RGBW
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type Proto.LedThing.ChannelFormat"
  pred RGB = SCALAR
  pred RGBW = RGB
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type Proto.LedThing.ChannelFormat"

instance P'.Wire ChannelFormat where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'

instance P'.GPB ChannelFormat

instance P'.MessageAPI msg' (msg' -> ChannelFormat) ChannelFormat where
  getVal m' f' = f' m'

instance P'.ReflectEnum ChannelFormat where
  reflectEnum = [(0, "SCALAR", SCALAR), (1, "RGB", RGB), (2, "RGBW", RGBW)]
  reflectEnumInfo _
   = P'.EnumInfo (P'.makePNF (P'.pack ".LedThing.ChannelFormat") ["Proto"] ["LedThing"] "ChannelFormat")
      ["Proto", "LedThing", "ChannelFormat.hs"]
      [(0, "SCALAR"), (1, "RGB"), (2, "RGBW")]

instance P'.TextType ChannelFormat where
  tellT = P'.tellShow
  getT = P'.getRead