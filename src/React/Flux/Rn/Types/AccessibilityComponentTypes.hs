{-# LANGUAGE DeriveGeneric #-}
module React.Flux.Rn.Types.AccessibilityComponentTypes where

import GHC.Generics               (Generic)
import GHCJS.Marshal              (ToJSVal (..))
import Prelude                    (Show)

data AccessibilityComponentTypes = None | Button | RadiobuttonChecked | RadiobuttonUnchecked
  deriving (Show, Generic)
instance ToJSVal AccessibilityComponentTypes where
  toJSVal None                 = toJSVal "none"
  toJSVal Button               = toJSVal "button"
  toJSVal RadiobuttonChecked   = toJSVal "radiobutton_checked"
  toJSVal RadiobuttonUnchecked = toJSVal "radiobutton_unchecked"