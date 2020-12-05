{-# LANGUAGE DeriveGeneric #-}
module React.Flux.Rn.Types.KeyboardShouldPersistTaps where

import GHC.Generics               (Generic)
import GHCJS.Marshal              (ToJSVal (..))
import Prelude                    (Show)

data KeyboardShouldPersistTaps = Always | Never | Handled
  deriving (Show, Generic)
instance ToJSVal KeyboardShouldPersistTaps where
  toJSVal Always  = toJSVal "always"
  toJSVal Never   = toJSVal "never"
  toJSVal Handled = toJSVal "handled"