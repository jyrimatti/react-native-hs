{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE DeriveGeneric         #-}
{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE RankNTypes            #-}
module React.Flux.Rn.Components.KeyboardAvoidingView (
    module React.Flux.Rn.Components.KeyboardAvoidingView,
    module React.Flux.Rn.Props.ViewProps
) where

import GHC.Generics               (Generic)
import GHCJS.Marshal              (ToJSVal (..))
import Numeric.Natural               (Natural)
import Prelude                    (Show, String, (.), fmap)
import React.Flux                 (ReactElementM, foreign_)
import React.Flux.Rn.Components.View (View)
import React.Flux.Rn.Properties      (Has, Props, Styles, nestedProp, prop, props)
import React.Flux.Rn.Props.ViewProps



data KeyboardAvoidingView
keyboardAvoidingView :: [Props KeyboardAvoidingView handler] -> ReactElementM handler a -> ReactElementM handler a
keyboardAvoidingView = foreign_ "KeyboardAvoidingView" . fmap props


data Behavior = Height | Position | Padding
  deriving (Show, Generic)
instance ToJSVal Behavior where
  toJSVal Height   = toJSVal ("height" :: String)
  toJSVal Position = toJSVal ("position" :: String)
  toJSVal Padding  = toJSVal ("padding" :: String)


-- Required
keyboardVerticalOffset :: Has c "keyboardVerticalOffset" => Natural -> Props c handler
keyboardVerticalOffset = prop "keyboardVerticalOffset"

behavior :: Has c "behavior" => Behavior -> Props c handler
behavior = prop "behavior"

contentContainerStyle :: Has c "contentContainerStyle" => [Styles View handler] -> Props c handler
contentContainerStyle = nestedProp "contentContainerStyle"



instance Has KeyboardAvoidingView "keyboardVerticalOffset"
instance Has KeyboardAvoidingView "behavior"
instance Has KeyboardAvoidingView "contentContainerStyle"

-- ViewProps:

instance Has KeyboardAvoidingView "onStartShouldSetResponder"
instance Has KeyboardAvoidingView "accessibilityLabel"
instance Has KeyboardAvoidingView "hitSlop"
instance Has KeyboardAvoidingView "nativeID"
instance Has KeyboardAvoidingView "onAccessibilityTap"
instance Has KeyboardAvoidingView "onLayout"
instance Has KeyboardAvoidingView "onMagicTap"
instance Has KeyboardAvoidingView "onMoveShouldSetResponder"
instance Has KeyboardAvoidingView "onMoveShouldSetResponderCapture"
instance Has KeyboardAvoidingView "onResponderGrant"
instance Has KeyboardAvoidingView "onResponderMove"
instance Has KeyboardAvoidingView "onResponderReject"
instance Has KeyboardAvoidingView "onResponderRelease"
instance Has KeyboardAvoidingView "onResponderTerminate"
instance Has KeyboardAvoidingView "onResponderTerminationRequest"
instance Has KeyboardAvoidingView "accessible"
instance Has KeyboardAvoidingView "onStartShouldSetResponderCapture"
instance Has KeyboardAvoidingView "pointerEvents"
instance Has KeyboardAvoidingView "removeClippedSubviews"
instance Has KeyboardAvoidingView "style"
instance Has KeyboardAvoidingView "testID"
instance Has KeyboardAvoidingView "accessibilityComponentType"
instance Has KeyboardAvoidingView "accessibilityLiveRegion"
instance Has KeyboardAvoidingView "collapsable"
instance Has KeyboardAvoidingView "importantForAccessibility"
instance Has KeyboardAvoidingView "needsOffscreenAlphaCompositing"
instance Has KeyboardAvoidingView "renderToHardwareTextureAndroid"
instance Has KeyboardAvoidingView "accessibilityTraits"
instance Has KeyboardAvoidingView "accessibilityViewIsModal"
instance Has KeyboardAvoidingView "shouldRasterizeIOS"


-- TODO: methods
