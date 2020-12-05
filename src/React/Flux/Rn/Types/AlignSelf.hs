{-# LANGUAGE DeriveGeneric             #-}
module React.Flux.Rn.Types.AlignSelf where

import GHC.Generics (Generic)
import GHCJS.Marshal              (ToJSVal (..))
import Prelude     

data AlignSelf = Auto | FlexStart | FlexEnd | Center | Stretch | Baseline
  deriving (Show, Generic)
instance ToJSVal AlignSelf where
  toJSVal Auto        = toJSVal ("auto" :: String)
  toJSVal FlexStart   = toJSVal ("flex-start" :: String)
  toJSVal FlexEnd     = toJSVal ("flex-end" :: String)
  toJSVal Center      = toJSVal ("center" :: String)
  toJSVal Stretch     = toJSVal ("strech" :: String)
  toJSVal Baseline    = toJSVal ("baseline" :: String)