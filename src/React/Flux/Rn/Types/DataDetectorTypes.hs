{-# LANGUAGE DeriveGeneric #-}
module React.Flux.Rn.Types.DataDetectorTypes where

import GHC.Generics               (Generic)
import GHCJS.Marshal              (ToJSVal (..))
import Prelude                    (Show)

data DataDetectorType = PhoneNumber
                      | Link
                      | Address
                      | CalendarEvent
                      | None
                      | All
  deriving (Show, Generic)
instance ToJSVal DataDetectorType where
  toJSVal PhoneNumber   = toJSVal "phoneNumber"
  toJSVal Link          = toJSVal "link"
  toJSVal Address       = toJSVal "address"
  toJSVal CalendarEvent = toJSVal "calendarEvent"
  toJSVal None          = toJSVal "none"
  toJSVal All           = toJSVal "all"

data DataDetectorTypes = DataDetectorType DataDetectorType | DataDetectorTypes [DataDetectorType]
  deriving (Show, Generic)
instance ToJSVal DataDetectorTypes where
  toJSVal (DataDetectorType x)   = toJSVal x
  toJSVal (DataDetectorTypes xs) = toJSVal xs