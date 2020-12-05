{-# LANGUAGE DeriveGeneric #-}
module React.Flux.Rn.Types.OnSelectionChange where

import Data.Aeson                 (FromJSON (..), ToJSON (..))
import GHC.Generics               (Generic)
import GHCJS.Marshal              (FromJSVal (..), ToJSVal (..))
import Numeric.Natural            (Natural)
import Prelude                    (Show, (.))
import React.Flux.Rn.Events       (fromNativeJSON)

data Selection = Selection {
  start :: Natural,
  end   :: Natural
} deriving (Show, Generic)
instance FromJSON Selection
instance ToJSON Selection
instance ToJSVal Selection where
  toJSVal = toJSVal . toJSON

newtype OnSelectionChange = OnSelectionChange {
    selection :: Selection
} deriving (Show, Generic)
instance FromJSON OnSelectionChange
instance FromJSVal OnSelectionChange where fromJSVal = fromNativeJSON