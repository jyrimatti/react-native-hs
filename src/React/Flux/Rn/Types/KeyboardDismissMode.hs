{-# LANGUAGE DeriveGeneric #-}
module React.Flux.Rn.Types.KeyboardDismissMode where

import GHC.Generics               (Generic)
import GHCJS.Marshal              (ToJSVal(..))
import Prelude                    (Show)

data KeyboardDismissMode = None | OnDrag | Interactive {- IOS -}
  deriving (Show, Generic)
instance ToJSVal KeyboardDismissMode where
  toJSVal None        = toJSVal "none"
  toJSVal OnDrag      = toJSVal "on-drag"
  toJSVal Interactive = toJSVal "interactive"