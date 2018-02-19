{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module Proto.LedThing.ResultStatus (ResultStatus(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data ResultStatus = OK
                  | ERROR
                  | MESSAGE_BUFFER_OVERRUN
                  | INVALID_REQUEST
                  | UNSUPPORTED_OPERATION
                  deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                            Prelude'.Generic)

instance P'.Mergeable ResultStatus

instance Prelude'.Bounded ResultStatus where
  minBound = OK
  maxBound = UNSUPPORTED_OPERATION

instance P'.Default ResultStatus where
  defaultValue = OK

toMaybe'Enum :: Prelude'.Int -> P'.Maybe ResultStatus
toMaybe'Enum 0 = Prelude'.Just OK
toMaybe'Enum 1 = Prelude'.Just ERROR
toMaybe'Enum 2 = Prelude'.Just MESSAGE_BUFFER_OVERRUN
toMaybe'Enum 3 = Prelude'.Just INVALID_REQUEST
toMaybe'Enum 4 = Prelude'.Just UNSUPPORTED_OPERATION
toMaybe'Enum _ = Prelude'.Nothing

instance Prelude'.Enum ResultStatus where
  fromEnum OK = 0
  fromEnum ERROR = 1
  fromEnum MESSAGE_BUFFER_OVERRUN = 2
  fromEnum INVALID_REQUEST = 3
  fromEnum UNSUPPORTED_OPERATION = 4
  toEnum
   = P'.fromMaybe (Prelude'.error "hprotoc generated code: toEnum failure for type Proto.LedThing.ResultStatus") . toMaybe'Enum
  succ OK = ERROR
  succ ERROR = MESSAGE_BUFFER_OVERRUN
  succ MESSAGE_BUFFER_OVERRUN = INVALID_REQUEST
  succ INVALID_REQUEST = UNSUPPORTED_OPERATION
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type Proto.LedThing.ResultStatus"
  pred ERROR = OK
  pred MESSAGE_BUFFER_OVERRUN = ERROR
  pred INVALID_REQUEST = MESSAGE_BUFFER_OVERRUN
  pred UNSUPPORTED_OPERATION = INVALID_REQUEST
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type Proto.LedThing.ResultStatus"

instance P'.Wire ResultStatus where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'

instance P'.GPB ResultStatus

instance P'.MessageAPI msg' (msg' -> ResultStatus) ResultStatus where
  getVal m' f' = f' m'

instance P'.ReflectEnum ResultStatus where
  reflectEnum
   = [(0, "OK", OK), (1, "ERROR", ERROR), (2, "MESSAGE_BUFFER_OVERRUN", MESSAGE_BUFFER_OVERRUN),
      (3, "INVALID_REQUEST", INVALID_REQUEST), (4, "UNSUPPORTED_OPERATION", UNSUPPORTED_OPERATION)]
  reflectEnumInfo _
   = P'.EnumInfo (P'.makePNF (P'.pack ".LedThing.ResultStatus") ["Proto"] ["LedThing"] "ResultStatus")
      ["Proto", "LedThing", "ResultStatus.hs"]
      [(0, "OK"), (1, "ERROR"), (2, "MESSAGE_BUFFER_OVERRUN"), (3, "INVALID_REQUEST"), (4, "UNSUPPORTED_OPERATION")]

instance P'.TextType ResultStatus where
  tellT = P'.tellShow
  getT = P'.getRead