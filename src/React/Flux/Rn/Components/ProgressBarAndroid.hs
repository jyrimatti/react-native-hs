{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE NoImplicitPrelude     #-}
{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE TypeApplications      #-}
module React.Flux.Rn.Components.ProgressBarAndroid (
    module React.Flux.Rn.Components.ProgressBarAndroid,
    Color(..), StyleAttr(..), UnitInterval,
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

import           Prelude                         (Bool)
import           Prelude                         (fmap)
import           Prelude                         ((.))
import           React.Flux                      (ReactElementM, foreign_)
import           React.Flux.Rn.Properties        (Has, Props, prop, props)
import qualified React.Flux.Rn.Props.CommonProps as CommonProps
import qualified React.Flux.Rn.Props.ViewProps   as ViewProps
import           React.Flux.Rn.Types             (Color (..), StyleAttr (..),
                                                  UnitInterval)



data ProgressBarAndroid
progressBarAndroid :: [Props ProgressBarAndroid handler] -> ReactElementM handler a -> ReactElementM handler a
progressBarAndroid = foreign_ "ProgressBarAndroid" . fmap props



animating :: Has c "animating" => Bool -> Props c handler
animating = prop "animating"

--color :: Has c "color" => Color -> Props c handler
--color = prop "color"

indeterminate :: Has c "indeterminate" => Bool -> Props c handler
indeterminate = prop "indeterminate"

progress :: Has c "progress" => UnitInterval -> Props c handler
progress = prop "progress"

styleAttr :: Has c "styleAttr" => StyleAttr -> Props c handler
styleAttr = prop "styleAttr"



instance Has ProgressBarAndroid "animating"
instance Has ProgressBarAndroid "color"
instance Has ProgressBarAndroid "indeterminate"
instance Has ProgressBarAndroid "progress"
instance Has ProgressBarAndroid "styleAttr"

-- ViewProps:

instance Has ProgressBarAndroid "onStartShouldSetResponder"
instance Has ProgressBarAndroid "accessibilityLabel"
instance Has ProgressBarAndroid "hitSlop"
instance Has ProgressBarAndroid "nativeID"
instance Has ProgressBarAndroid "onAccessibilityTap"
instance Has ProgressBarAndroid "onLayout"
instance Has ProgressBarAndroid "onMagicTap"
instance Has ProgressBarAndroid "onMoveShouldSetResponder"
instance Has ProgressBarAndroid "onMoveShouldSetResponderCapture"
instance Has ProgressBarAndroid "onResponderGrant"
instance Has ProgressBarAndroid "onResponderMove"
instance Has ProgressBarAndroid "onResponderReject"
instance Has ProgressBarAndroid "onResponderRelease"
instance Has ProgressBarAndroid "onResponderTerminate"
instance Has ProgressBarAndroid "onResponderTerminationRequest"
instance Has ProgressBarAndroid "accessible"
instance Has ProgressBarAndroid "onStartShouldSetResponderCapture"
instance Has ProgressBarAndroid "pointerEvents"
instance Has ProgressBarAndroid "removeClippedSubviews"
instance Has ProgressBarAndroid "style"
instance Has ProgressBarAndroid "testID"
instance Has ProgressBarAndroid "accessibilityComponentType"
instance Has ProgressBarAndroid "accessibilityLiveRegion"
instance Has ProgressBarAndroid "collapsable"
instance Has ProgressBarAndroid "importantForAccessibility"
instance Has ProgressBarAndroid "needsOffscreenAlphaCompositing"
instance Has ProgressBarAndroid "renderToHardwareTextureAndroid"
instance Has ProgressBarAndroid "accessibilityTraits"
instance Has ProgressBarAndroid "accessibilityViewIsModal"
instance Has ProgressBarAndroid "shouldRasterizeIOS"

