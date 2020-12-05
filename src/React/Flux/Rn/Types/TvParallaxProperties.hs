{-# LANGUAGE DeriveGeneric #-}
module React.Flux.Rn.Types.TvParallaxProperties where

import Data.Aeson                 (ToJSON (..))
import GHC.Generics               (Generic)
import GHCJS.Marshal              (ToJSVal (..))
import Prelude                    (Bool, Double, Show, (.))

data TvParallaxProperties = TvParallaxProperties {
  enabled        :: Bool,
  shiftDistanceX :: Double,
  shiftDistanceY :: Double,
  magnification  :: Double
} deriving (Show,Generic)
instance ToJSON TvParallaxProperties
instance ToJSVal TvParallaxProperties where
  toJSVal = toJSVal . toJSON