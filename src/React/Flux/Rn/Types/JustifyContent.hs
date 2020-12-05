{-# LANGUAGE DeriveGeneric             #-}
module React.Flux.Rn.Types.JustifyContent where

import GHC.Generics (Generic)
import GHCJS.Marshal              (ToJSVal (..))
import Prelude                    (Show, String)

data JustifyContent = FlexStart | FlexEnd | Center | SpaceBetween | SpaceAround
  deriving (Show, Generic)
instance ToJSVal JustifyContent where
  toJSVal FlexStart     = toJSVal ("flex-start" :: String)
  toJSVal FlexEnd       = toJSVal ("flex-end" :: String)
  toJSVal Center        = toJSVal ("center" :: String)
  toJSVal SpaceBetween  = toJSVal ("space-between" :: String)
  toJSVal SpaceAround   = toJSVal ("space-around" :: String)