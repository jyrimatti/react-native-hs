{-# LANGUAGE DeriveGeneric #-}
module React.Flux.Rn.Types.OverScrollMode where

import GHC.Generics               (Generic)
import GHCJS.Marshal              (ToJSVal (..))
import Prelude                    (Show)

data OverScrollMode = Auto | Always | Never
  deriving (Show, Generic)
instance ToJSVal OverScrollMode where
  toJSVal Auto   = toJSVal "auto"
  toJSVal Always = toJSVal "always"
  toJSVal Never  = toJSVal "never"