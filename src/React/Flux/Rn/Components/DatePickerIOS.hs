{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE NoImplicitPrelude     #-}
{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE TypeApplications      #-}
module React.Flux.Rn.Components.DatePickerIOS (
    module React.Flux.Rn.Components.DatePickerIOS,
    MinuteInterval(..), Mode(..),
    ViewProps.AccessibilityComponentTypes(..),
    ViewProps.AccessibilityLiveRegion(..),
    ViewProps.AccessibilityTraits(..),
    ViewProps.ImportantForAccessibility(..),
    ViewProps.Inset(Inset),
    ViewProps.OnLayout(OnLayout),
    ViewProps.PointerEvents(..),
    ViewProps.SyntheticTouchEvent(SyntheticTouchEvent)
) where

import           Data.Time.LocalTime           (LocalTime)
import           Prelude                       ((.))
import           Prelude                       (Int, fmap)
import           React.Flux                    (ReactElementM, foreign_)
import           React.Flux.Rn.Events          (EventHandlerType, on1)
import           React.Flux.Rn.Properties      (Has, Props, prop, props)
import qualified React.Flux.Rn.Props.ViewProps as ViewProps
import           React.Flux.Rn.Types           (MinuteInterval (..), Mode (..))



data DatePickerIOS
datePickerIOS :: [Props DatePickerIOS handler] -> ReactElementM handler a -> ReactElementM handler a
datePickerIOS = foreign_ "DatePickerIOS" . fmap props



-- Required
date :: Has c "date" => LocalTime -> Props c handler
date = prop "date"

-- Required
onDateChange :: Has c "onDateChange" => (LocalTime -> EventHandlerType handler) -> Props c handler
onDateChange = on1 "onDateChange"

maximumDate :: Has c "maximumDate" => LocalTime -> Props c handler
maximumDate = prop "maximumDate"

minimumDate :: Has c "minimumDate" => LocalTime -> Props c handler
minimumDate = prop "minimumDate"

minuteInterval :: Has c "minuteInterval" => MinuteInterval -> Props c handler
minuteInterval = prop "minuteInterval"

mode :: Has c "mode" => Mode -> Props c handler
mode = prop "mode"

timeZoneOffsetInMinutes :: Has c "timeZoneOffsetInMinutes" => Int -> Props c handler
timeZoneOffsetInMinutes = prop "timeZoneOffsetInMinutes"



instance Has DatePickerIOS "date"
instance Has DatePickerIOS "onDateChange"
instance Has DatePickerIOS "maximumDate"
instance Has DatePickerIOS "minimumDate"
instance Has DatePickerIOS "minuteInterval"
instance Has DatePickerIOS "mode"
instance Has DatePickerIOS "timeZoneOffsetInMinutes"

-- ViewProps:

instance Has DatePickerIOS "onStartShouldSetResponder"
instance Has DatePickerIOS "accessibilityLabel"
instance Has DatePickerIOS "hitSlop"
instance Has DatePickerIOS "nativeID"
instance Has DatePickerIOS "onAccessibilityTap"
instance Has DatePickerIOS "onLayout"
instance Has DatePickerIOS "onMagicTap"
instance Has DatePickerIOS "onMoveShouldSetResponder"
instance Has DatePickerIOS "onMoveShouldSetResponderCapture"
instance Has DatePickerIOS "onResponderGrant"
instance Has DatePickerIOS "onResponderMove"
instance Has DatePickerIOS "onResponderReject"
instance Has DatePickerIOS "onResponderRelease"
instance Has DatePickerIOS "onResponderTerminate"
instance Has DatePickerIOS "onResponderTerminationRequest"
instance Has DatePickerIOS "accessible"
instance Has DatePickerIOS "onStartShouldSetResponderCapture"
instance Has DatePickerIOS "pointerEvents"
instance Has DatePickerIOS "removeClippedSubviews"
instance Has DatePickerIOS "style"
instance Has DatePickerIOS "testID"
instance Has DatePickerIOS "accessibilityComponentType"
instance Has DatePickerIOS "accessibilityLiveRegion"
instance Has DatePickerIOS "collapsable"
instance Has DatePickerIOS "importantForAccessibility"
instance Has DatePickerIOS "needsOffscreenAlphaCompositing"
instance Has DatePickerIOS "renderToHardwareTextureAndroid"
instance Has DatePickerIOS "accessibilityTraits"
instance Has DatePickerIOS "accessibilityViewIsModal"
instance Has DatePickerIOS "shouldRasterizeIOS"
