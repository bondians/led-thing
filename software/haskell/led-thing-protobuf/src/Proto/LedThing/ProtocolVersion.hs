{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module Proto.LedThing.ProtocolVersion (ProtocolVersion(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data ProtocolVersion = V0
                     deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                               Prelude'.Generic)

instance P'.Mergeable ProtocolVersion

instance Prelude'.Bounded ProtocolVersion where
  minBound = V0
  maxBound = V0

instance P'.Default ProtocolVersion where
  defaultValue = V0

toMaybe'Enum :: Prelude'.Int -> P'.Maybe ProtocolVersion
toMaybe'Enum 0 = Prelude'.Just V0
toMaybe'Enum _ = Prelude'.Nothing

instance Prelude'.Enum ProtocolVersion where
  fromEnum V0 = 0
  toEnum
   = P'.fromMaybe (Prelude'.error "hprotoc generated code: toEnum failure for type Proto.LedThing.ProtocolVersion") . toMaybe'Enum
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type Proto.LedThing.ProtocolVersion"
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type Proto.LedThing.ProtocolVersion"

instance P'.Wire ProtocolVersion where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'

instance P'.GPB ProtocolVersion

instance P'.MessageAPI msg' (msg' -> ProtocolVersion) ProtocolVersion where
  getVal m' f' = f' m'

instance P'.ReflectEnum ProtocolVersion where
  reflectEnum = [(0, "V0", V0)]
  reflectEnumInfo _
   = P'.EnumInfo (P'.makePNF (P'.pack ".LedThing.ProtocolVersion") ["Proto"] ["LedThing"] "ProtocolVersion")
      ["Proto", "LedThing", "ProtocolVersion.hs"]
      [(0, "V0")]

instance P'.TextType ProtocolVersion where
  tellT = P'.tellShow
  getT = P'.getRead