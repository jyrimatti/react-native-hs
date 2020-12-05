{-# LANGUAGE DeriveGeneric #-}
module React.Flux.Rn.Types.Visibility where

import GHC.Generics               (Generic)
import GHCJS.Marshal              (ToJSVal (..))
import Prelude                    (Show)

data Visibility = Visible | Hidden
  deriving (Show, Generic)
instance ToJSVal Visibility where
  toJSVal Visible = toJSVal "visible"
  toJSVal Hidden  = toJSVal "hidden"