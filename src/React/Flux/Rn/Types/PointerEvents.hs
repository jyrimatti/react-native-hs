{-# LANGUAGE DeriveGeneric             #-}
module React.Flux.Rn.Types.PointerEvents where

import GHC.Generics (Generic)
import GHCJS.Marshal              (ToJSVal (..))
import Prelude (Show, String)

data PointerEvents = BoxNone | None | BoxOnly | Auto
  deriving (Show, Generic)
instance ToJSVal PointerEvents where
  toJSVal BoxNone   = toJSVal ("box-none" :: String)
  toJSVal None      = toJSVal ("none" :: String)
  toJSVal BoxOnly   = toJSVal ("box-only" :: String)
  toJSVal Auto      = toJSVal ("auto" :: String)