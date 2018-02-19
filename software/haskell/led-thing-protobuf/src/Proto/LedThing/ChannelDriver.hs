{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module Proto.LedThing.ChannelDriver (ChannelDriver(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data ChannelDriver = NONE
                   | APA102
                   | LPD8806
                   | SK6812
                   | WS2801
                   | WS2811
                   | WS2812
                   deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                             Prelude'.Generic)

instance P'.Mergeable ChannelDriver

instance Prelude'.Bounded ChannelDriver where
  minBound = NONE
  maxBound = WS2812

instance P'.Default ChannelDriver where
  defaultValue = NONE

toMaybe'Enum :: Prelude'.Int -> P'.Maybe ChannelDriver
toMaybe'Enum 0 = Prelude'.Just NONE
toMaybe'Enum 1 = Prelude'.Just APA102
toMaybe'Enum 2 = Prelude'.Just LPD8806
toMaybe'Enum 3 = Prelude'.Just SK6812
toMaybe'Enum 4 = Prelude'.Just WS2801
toMaybe'Enum 5 = Prelude'.Just WS2811
toMaybe'Enum 6 = Prelude'.Just WS2812
toMaybe'Enum _ = Prelude'.Nothing

instance Prelude'.Enum ChannelDriver where
  fromEnum NONE = 0
  fromEnum APA102 = 1
  fromEnum LPD8806 = 2
  fromEnum SK6812 = 3
  fromEnum WS2801 = 4
  fromEnum WS2811 = 5
  fromEnum WS2812 = 6
  toEnum
   = P'.fromMaybe (Prelude'.error "hprotoc generated code: toEnum failure for type Proto.LedThing.ChannelDriver") . toMaybe'Enum
  succ NONE = APA102
  succ APA102 = LPD8806
  succ LPD8806 = SK6812
  succ SK6812 = WS2801
  succ WS2801 = WS2811
  succ WS2811 = WS2812
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type Proto.LedThing.ChannelDriver"
  pred APA102 = NONE
  pred LPD8806 = APA102
  pred SK6812 = LPD8806
  pred WS2801 = SK6812
  pred WS2811 = WS2801
  pred WS2812 = WS2811
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type Proto.LedThing.ChannelDriver"

instance P'.Wire ChannelDriver where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'

instance P'.GPB ChannelDriver

instance P'.MessageAPI msg' (msg' -> ChannelDriver) ChannelDriver where
  getVal m' f' = f' m'

instance P'.ReflectEnum ChannelDriver where
  reflectEnum
   = [(0, "NONE", NONE), (1, "APA102", APA102), (2, "LPD8806", LPD8806), (3, "SK6812", SK6812), (4, "WS2801", WS2801),
      (5, "WS2811", WS2811), (6, "WS2812", WS2812)]
  reflectEnumInfo _
   = P'.EnumInfo (P'.makePNF (P'.pack ".LedThing.ChannelDriver") ["Proto"] ["LedThing"] "ChannelDriver")
      ["Proto", "LedThing", "ChannelDriver.hs"]
      [(0, "NONE"), (1, "APA102"), (2, "LPD8806"), (3, "SK6812"), (4, "WS2801"), (5, "WS2811"), (6, "WS2812")]

instance P'.TextType ChannelDriver where
  tellT = P'.tellShow
  getT = P'.getRead