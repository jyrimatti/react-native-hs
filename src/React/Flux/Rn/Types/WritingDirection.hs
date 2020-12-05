{-# LANGUAGE DeriveGeneric             #-}
module React.Flux.Rn.Types.WritingDirection where

import GHC.Generics (Generic)
import GHCJS.Marshal              (ToJSVal (..))
import Prelude (Show, String)

data WritingDirection = Auto | LtR | RtL
  deriving (Show, Generic)
instance ToJSVal WritingDirection where
  toJSVal Auto = toJSVal ("auto" :: String)
  toJSVal LtR  = toJSVal ("ltr" :: String)
  toJSVal RtL  = toJSVal ("rtl" :: String)