{-# LANGUAGE DeriveGeneric             #-}
module React.Flux.Rn.Types.TextAlignVertical where

import GHC.Generics (Generic)
import GHCJS.Marshal              (ToJSVal (..))
import Prelude (Show, String)

data TextAlignVertical = Auto | Top | Bottom | Center
  deriving (Show, Generic)
instance ToJSVal TextAlignVertical where
  toJSVal Auto   = toJSVal ("auto" :: String)
  toJSVal Top    = toJSVal ("top" :: String)
  toJSVal Bottom = toJSVal ("bottom" :: String)
  toJSVal Center = toJSVal ("center" :: String)