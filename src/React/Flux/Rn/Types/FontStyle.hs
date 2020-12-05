{-# LANGUAGE DeriveGeneric             #-}
module React.Flux.Rn.Types.FontStyle where

import GHC.Generics (Generic)
import GHCJS.Marshal              (ToJSVal (..))
import Prelude                    (Show, String)

data FontStyle = Normal | Italic
  deriving (Show, Generic)
instance ToJSVal FontStyle where
  toJSVal Normal = toJSVal ("normal" :: String)
  toJSVal Italic   = toJSVal ("italic" :: String)