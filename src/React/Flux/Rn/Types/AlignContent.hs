{-# LANGUAGE DeriveGeneric             #-}
module React.Flux.Rn.Types.AlignContent where

import GHC.Generics (Generic)
import GHCJS.Marshal              (ToJSVal (..))
import Prelude  

data AlignContent = FlexStart | FlexEnd | Center | Stretch | SpaceBetween | SpaceAround
  deriving (Show, Generic)
instance ToJSVal AlignContent where
  toJSVal FlexStart    = toJSVal ("flex-start" :: String)
  toJSVal FlexEnd      = toJSVal ("flex-end" :: String)
  toJSVal Center       = toJSVal ("center" :: String)
  toJSVal Stretch      = toJSVal ("stretch" :: String)
  toJSVal SpaceBetween = toJSVal ("space-between" :: String)
  toJSVal SpaceAround  = toJSVal ("space-around" :: String)