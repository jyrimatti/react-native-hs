{-# LANGUAGE DeriveGeneric         #-}
module React.Flux.Rn.Types.Size where

import GHC.Generics               (Generic)
import GHCJS.Marshal              (ToJSVal (..))
import Prelude                    (Show)
data Size = Small
          | Large
          | Natural
  deriving (Show, Generic)
instance ToJSVal Size where
  toJSVal Small   = toJSVal "small"
  toJSVal Large   = toJSVal "large"
  toJSVal Natural = toJSVal "natural"