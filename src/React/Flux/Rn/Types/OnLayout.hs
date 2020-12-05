{-# LANGUAGE DeriveGeneric #-}
module React.Flux.Rn.Types.OnLayout where

import Data.Aeson                 (FromJSON (..))
import Data.Aeson.Types           (parseMaybe)
import GHC.Generics               (Generic)
import GHCJS.Marshal              (FromJSVal (..))
import Numeric.Natural            (Natural)
import Prelude                    (Show, (<$>))
import React.Flux.Rn.Events       (nativeEvent)

data OnLayoutVals = OnLayoutVals {
    x      :: Natural,
    y      :: Natural,
    width  :: Natural,
    height :: Natural
} deriving (Show, Generic)
instance FromJSON OnLayoutVals

newtype OnLayout = OnLayout {
  layout :: OnLayoutVals
} deriving (Show, Generic)
instance FromJSON OnLayout
instance FromJSVal OnLayout where
  fromJSVal jsval = parseMaybe parseJSON <$> nativeEvent jsval