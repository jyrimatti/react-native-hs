{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE NoImplicitPrelude     #-}
{-# LANGUAGE OverloadedStrings     #-}
module React.Flux.Rn.Components.ActivityIndicator (
    module React.Flux.Rn.Components.ActivityIndicator,
    ActivityIndicatorSize(..), Color(..),
    ViewProps.AccessibilityComponentTypes(..),
    ViewProps.AccessibilityLiveRegion(..),
    ViewProps.AccessibilityTraits(..),
    ViewProps.ImportantForAccessibility(..),
    ViewProps.Inset(Inset),
    ViewProps.OnLayout(OnLayout),
    ViewProps.PointerEvents(..),
    ViewProps.SyntheticTouchEvent(SyntheticTouchEvent),
    CommonProps.color
) where

import           Prelude                         (Bool, fmap)
import           Prelude                         ((.))
import           React.Flux                      (ReactElementM, foreign_)
import           React.Flux.Rn.Properties        (Has, Props, prop, props)
import qualified React.Flux.Rn.Props.CommonProps as CommonProps
import qualified React.Flux.Rn.Props.ViewProps   as ViewProps
import           React.Flux.Rn.Types             (ActivityIndicatorSize (..),
                                                  Color (..))



data ActivityIndicator
activityIndicator :: [Props ActivityIndicator handler] -> ReactElementM handler a -> ReactElementM handler a
activityIndicator = foreign_ "ActivityIndicator" . fmap props



animating :: Has c "animating" => Bool -> Props c handler
animating = prop "animating"

--color :: Has c "color" => Color -> Props c handler
--color = prop "color"

size :: Has c "size" => ActivityIndicatorSize -> Props c handler
size = prop "size"

hidesWhenStopped :: Has c "hidesWhenStopped" => Bool -> Props c handler
hidesWhenStopped = prop "hidesWhenStopped"



instance Has ActivityIndicator "animating"
instance Has ActivityIndicator "color"
instance Has ActivityIndicator "size"
instance Has ActivityIndicator "hidesWhenStopped"

-- ViewProps:

instance Has ActivityIndicator "onStartShouldSetResponder"
instance Has ActivityIndicator "accessibilityLabel"
instance Has ActivityIndicator "hitSlop"
instance Has ActivityIndicator "nativeID"
instance Has ActivityIndicator "onAccessibilityTap"
instance Has ActivityIndicator "onLayout"
instance Has ActivityIndicator "onMagicTap"
instance Has ActivityIndicator "onMoveShouldSetResponder"
instance Has ActivityIndicator "onMoveShouldSetResponderCapture"
instance Has ActivityIndicator "onResponderGrant"
instance Has ActivityIndicator "onResponderMove"
instance Has ActivityIndicator "onResponderReject"
instance Has ActivityIndicator "onResponderRelease"
instance Has ActivityIndicator "onResponderTerminate"
instance Has ActivityIndicator "onResponderTerminationRequest"
instance Has ActivityIndicator "accessible"
instance Has ActivityIndicator "onStartShouldSetResponderCapture"
instance Has ActivityIndicator "pointerEvents"
instance Has ActivityIndicator "removeClippedSubviews"
instance Has ActivityIndicator "style"
instance Has ActivityIndicator "testID"
instance Has ActivityIndicator "accessibilityComponentType"
instance Has ActivityIndicator "accessibilityLiveRegion"
instance Has ActivityIndicator "collapsable"
instance Has ActivityIndicator "importantForAccessibility"
instance Has ActivityIndicator "needsOffscreenAlphaCompositing"
instance Has ActivityIndicator "renderToHardwareTextureAndroid"
instance Has ActivityIndicator "accessibilityTraits"
instance Has ActivityIndicator "accessibilityViewIsModal"
instance Has ActivityIndicator "shouldRasterizeIOS"

