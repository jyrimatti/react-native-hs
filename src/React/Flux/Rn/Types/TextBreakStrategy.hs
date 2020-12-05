{-# LANGUAGE DeriveGeneric #-}
module React.Flux.Rn.Types.TextBreakStrategy where

import GHC.Generics               (Generic)
import GHCJS.Marshal              (ToJSVal (..))
import Prelude                    (Show)

data TextBreakStrategy = Simple | HighQuality | Balanced
  deriving (Show, Generic)
instance ToJSVal TextBreakStrategy where
  toJSVal Simple      = toJSVal "simple"
  toJSVal HighQuality = toJSVal "highQuality"
  toJSVal Balanced    = toJSVal "balanced"