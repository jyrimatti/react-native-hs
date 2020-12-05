{-# LANGUAGE DeriveGeneric #-}
module React.Flux.Rn.Types.ContentSize where

import Data.Aeson                 (FromJSON (..), ToJSON (..))
import GHC.Generics               (Generic)
import GHCJS.Marshal              (ToJSVal (..))
import Numeric.Natural            (Natural)
import Prelude                    (Show, (.))

data ContentSize = ContentSize {
  width  :: Natural,
  height :: Natural
} deriving (Show, Generic)
instance FromJSON ContentSize
instance ToJSON ContentSize
instance ToJSVal ContentSize where
  toJSVal = toJSVal . toJSON

