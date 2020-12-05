{-# LANGUAGE DeriveGeneric #-}
module React.Flux.Rn.Types.ContentInsetAdjustmentBehavior where

import GHC.Generics               (Generic)
import GHCJS.Marshal              (ToJSVal (..))
import Prelude                    (Show)

data ContentInsetAdjustmentBehavior = Automatic | ScrollableAxes | Never | Always
  deriving (Show, Generic)
instance ToJSVal ContentInsetAdjustmentBehavior where
  toJSVal Automatic      = toJSVal "automatic"
  toJSVal ScrollableAxes = toJSVal "scrollableAxes"
  toJSVal Never          = toJSVal "never"
  toJSVal Always         = toJSVal "always"