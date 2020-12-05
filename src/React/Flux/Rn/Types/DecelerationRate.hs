{-# LANGUAGE DeriveGeneric #-}
module React.Flux.Rn.Types.DecelerationRate where

import GHC.Generics               (Generic)
import GHCJS.Marshal              (ToJSVal (..))
import Prelude                    (Show, Double)

data DecelerationRate = Fast | Normal | DecelerationRate Double
  deriving (Show, Generic)
instance ToJSVal DecelerationRate where
  toJSVal Fast                 = toJSVal "fast"
  toJSVal Normal               = toJSVal "normal"
  toJSVal (DecelerationRate n) = toJSVal n