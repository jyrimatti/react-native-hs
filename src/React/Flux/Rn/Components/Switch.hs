{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE NoImplicitPrelude     #-}
{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE RankNTypes            #-}
{-# LANGUAGE TypeApplications      #-}
module React.Flux.Rn.Components.Switch (
    module React.Flux.Rn.Components.Switch,
    Color(..),
    ViewProps.AccessibilityComponentTypes(..),
    ViewProps.AccessibilityLiveRegion(..),
    ViewProps.AccessibilityTraits(..),
    ViewProps.ImportantForAccessibility(..),
    ViewProps.Inset(Inset),
    ViewProps.OnLayout(OnLayout),
    ViewProps.PointerEvents(..),
    ViewProps.SyntheticTouchEvent(SyntheticTouchEvent),
    CommonProps.tintColor
) where

import           Prelude                         (Bool)
import           Prelude                         ((.))
import           Prelude                         (fmap)
import           React.Flux                      (ReactElementM, foreign_)
import           React.Flux.Rn.Events            (EventHandlerType, on1)
import           React.Flux.Rn.Properties        (Has, Props, prop, props)
import qualified React.Flux.Rn.Props.CommonProps as CommonProps
import qualified React.Flux.Rn.Props.ViewProps   as ViewProps
import           React.Flux.Rn.Types             (Color (..))



data Switch
switch :: [Props Switch handler] -> ReactElementM handler a -> ReactElementM handler a
switch = foreign_ "Switch" . fmap props



disabled :: Has c "disabled" => Bool -> Props c handler
disabled = prop "disabled"

onTintColor :: Has c "onTintColor" => Color -> Props c handler
onTintColor = prop "onTintColor"

onValueChange :: Has c "onValueChange" => (Bool -> EventHandlerType handler) -> Props c handler
onValueChange = on1 "onValueChange"

thumbTintColor :: Has c "thumbTintColor" => Color -> Props c handler
thumbTintColor = prop "thumbTintColor"

--tintColor :: Has c "tintColor" => Color -> Props c handler
--tintColor = prop "tintColor"

value :: Has c "value" => Bool -> Props c handler
value = prop "value"



instance Has Switch "disabled"
instance Has Switch "onTintColor"
instance Has Switch "onValueChange"
instance Has Switch "thumbTintColor"
instance Has Switch "tintColor"
instance Has Switch "value"

-- ViewProps:

instance Has Switch "onStartShouldSetResponder"
instance Has Switch "accessibilityLabel"
instance Has Switch "hitSlop"
instance Has Switch "nativeID"
instance Has Switch "onAccessibilityTap"
instance Has Switch "onLayout"
instance Has Switch "onMagicTap"
instance Has Switch "onMoveShouldSetResponder"
instance Has Switch "onMoveShouldSetResponderCapture"
instance Has Switch "onResponderGrant"
instance Has Switch "onResponderMove"
instance Has Switch "onResponderReject"
instance Has Switch "onResponderRelease"
instance Has Switch "onResponderTerminate"
instance Has Switch "onResponderTerminationRequest"
instance Has Switch "accessible"
instance Has Switch "onStartShouldSetResponderCapture"
instance Has Switch "pointerEvents"
instance Has Switch "removeClippedSubviews"
instance Has Switch "style"
instance Has Switch "testID"
instance Has Switch "accessibilityComponentType"
instance Has Switch "accessibilityLiveRegion"
instance Has Switch "collapsable"
instance Has Switch "importantForAccessibility"
instance Has Switch "needsOffscreenAlphaCompositing"
instance Has Switch "renderToHardwareTextureAndroid"
instance Has Switch "accessibilityTraits"
instance Has Switch "accessibilityViewIsModal"
instance Has Switch "shouldRasterizeIOS"

