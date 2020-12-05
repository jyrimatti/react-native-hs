{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE RankNTypes            #-}
module React.Flux.Rn.Components.Slider (
    module React.Flux.Rn.Components.Slider,
    module React.Flux.Rn.Props.ViewProps,
    module React.Flux.Rn.Types.Color,
    module React.Flux.Rn.Types.ImageSource
) where

import Numeric.Natural               (Natural)
import Prelude                       (fmap, Bool, Int, (.), fmap)
import React.Flux                    (ReactElementM, foreign_)
import React.Flux.Rn.Events          (EventHandlerType, on1)
import React.Flux.Rn.Properties      (Has, Props, prop, props)
import React.Flux.Rn.Props.ViewProps hiding (OnLayoutVals(..))
import React.Flux.Rn.Types.Color
import React.Flux.Rn.Types.ImageSource


data Slider
slider :: [Props Slider handler] -> ReactElementM handler a -> ReactElementM handler a
slider = foreign_ "Slider" . fmap props



disabled :: Has c "disabled" => Bool -> Props c handler
disabled = prop "disabled"

maximumValue :: Has c "maximumValue" => Int -> Props c handler
maximumValue = prop "maximumValue"

minimumTrackTintColor :: Has c "minimumTrackTintColor" => Color -> Props c handler
minimumTrackTintColor = prop "minimumTrackTintColor"

minimumValue :: Has c "minimumValue" => Int -> Props c handler
minimumValue = prop "minimumValue"

onSlidingComplete :: Has c "onSlidingComplete" => (Int -> EventHandlerType handler) -> Props c handler
onSlidingComplete = on1 "onSlidingComplete"

onValueChange :: Has c "onValueChange" => (Int -> EventHandlerType handler) -> Props c handler
onValueChange = on1 "onValueChange"

step :: Has c "step" => Natural -> Props c handler
step = prop "step"

maximumTrackTintColor :: Has c "maximumTrackTintColor" => Color -> Props c handler
maximumTrackTintColor = prop "maximumTrackTintColor"

value :: Has c "value" => Int -> Props c handler
value = prop "value"

-- Platform: Android
thumbTintColor :: Has c "thumbTintColor" => Color -> Props c handler
thumbTintColor = prop "thumbTintColor"

-- Platform: IOS
maximumTrackImage :: Has c "maximumTrackImage" => ImageSource -> Props c handler
maximumTrackImage = prop "maximumTrackImage"

-- Platform: IOS
minimumTrackImage :: Has c "minimumTrackImage" => ImageSource -> Props c handler
minimumTrackImage = prop "minimumTrackImage"

-- Platform: IOS
thumbImage :: Has c "thumbImage" => ImageSource -> Props c handler
thumbImage = prop "thumbImage"

trackImage :: Has c "trackImage" => ImageSource -> Props c handler
trackImage = prop "trackImage"



instance Has Slider "disabled"
instance Has Slider "maximumValue"
instance Has Slider "minimumTrackTintColor"
instance Has Slider "minimumValue"
instance Has Slider "onSlidingComplete"
instance Has Slider "onValueChange"
instance Has Slider "step"
instance Has Slider "maximumTrackTintColor"
instance Has Slider "value"
instance Has Slider "thumbTintColor"
instance Has Slider "maximumTrackImage"
instance Has Slider "minimumTrackImage"
instance Has Slider "thumbImage"
instance Has Slider "trackImage"

-- ViewProps:

instance Has Slider "onStartShouldSetResponder"
instance Has Slider "accessibilityLabel"
instance Has Slider "hitSlop"
instance Has Slider "nativeID"
instance Has Slider "onAccessibilityTap"
instance Has Slider "onLayout"
instance Has Slider "onMagicTap"
instance Has Slider "onMoveShouldSetResponder"
instance Has Slider "onMoveShouldSetResponderCapture"
instance Has Slider "onResponderGrant"
instance Has Slider "onResponderMove"
instance Has Slider "onResponderReject"
instance Has Slider "onResponderRelease"
instance Has Slider "onResponderTerminate"
instance Has Slider "onResponderTerminationRequest"
instance Has Slider "accessible"
instance Has Slider "onStartShouldSetResponderCapture"
instance Has Slider "pointerEvents"
instance Has Slider "removeClippedSubviews"
instance Has Slider "style"
instance Has Slider "testID"
instance Has Slider "accessibilityComponentType"
instance Has Slider "accessibilityLiveRegion"
instance Has Slider "collapsable"
instance Has Slider "importantForAccessibility"
instance Has Slider "needsOffscreenAlphaCompositing"
instance Has Slider "renderToHardwareTextureAndroid"
instance Has Slider "accessibilityTraits"
instance Has Slider "accessibilityViewIsModal"
instance Has Slider "shouldRasterizeIOS"

