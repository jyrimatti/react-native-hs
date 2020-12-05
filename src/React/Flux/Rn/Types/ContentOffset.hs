{-# LANGUAGE DeriveGeneric #-}
module React.Flux.Rn.Types.ContentOffset where

import Data.Aeson                 (FromJSON (..), ToJSON (..))
import GHC.Generics               (Generic)
import GHCJS.Marshal              (ToJSVal (..))
import Numeric.Natural
import Prelude                    (Show, (.))

data ContentOffset = ContentOffset {
  x :: Natural,
  y :: Natural
} deriving (Show,Generic)
instance FromJSON ContentOffset
instance ToJSON ContentOffset
instance ToJSVal ContentOffset where
  toJSVal = toJSVal . toJSON