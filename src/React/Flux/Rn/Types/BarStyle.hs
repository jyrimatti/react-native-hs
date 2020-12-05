{-# LANGUAGE DeriveGeneric #-}
module React.Flux.Rn.Types.BarStyle where

import GHC.Generics               (Generic)
import GHCJS.Marshal              (ToJSVal (..))
import Prelude                    (Show)

data BarStyle = Default | Black
  deriving (Show, Generic)
instance ToJSVal BarStyle where
  toJSVal Default = toJSVal "default"
  toJSVal Black   = toJSVal "black"