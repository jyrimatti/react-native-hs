{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE DeriveGeneric         #-}
{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings     #-}
module React.Flux.Rn.Components.DatePickerIOS (
    module React.Flux.Rn.Components.DatePickerIOS,
    module React.Flux.Rn.Props.ViewProps
) where

import Data.Time.LocalTime            ( LocalTime )
import GHC.Generics                   ( Generic )
import GHCJS.Marshal                  ( ToJSVal(..) )

import Prelude                        ( Int
                                                , fmap
                                                , Show
                                                , String
                                                , (.)
                                                )
import React.Flux                     ( ReactElementM
                                                , foreign_
                                                , EventHandlerType
                                                )
import React.Flux.Rn.Events           ( on1 )
import React.Flux.Rn.Properties       ( Has
                                                , Props
                                                , prop
                                                , props
                                                )
import React.Flux.Rn.Props.ViewProps



data DatePickerIOS
datePickerIOS :: [Props DatePickerIOS handler] -> ReactElementM handler a -> ReactElementM handler a
datePickerIOS = foreign_ "DatePickerIOS" . fmap props

data Mode = Date | Time | DateTime
  deriving (Show, Generic)
instance ToJSVal Mode where
  toJSVal Date     = toJSVal ("date" :: String)
  toJSVal Time     = toJSVal ("time" :: String)
  toJSVal DateTime = toJSVal ("datetime" :: String)


data MinuteInterval = M1 | M2 | M3 | M4 | M5 | M6 | M10 | M12 | M15 | M20 | M30
  deriving (Show, Generic)
instance ToJSVal MinuteInterval where
  toJSVal M1  = toJSVal (1 :: Int)
  toJSVal M2  = toJSVal (2 :: Int)
  toJSVal M3  = toJSVal (3 :: Int)
  toJSVal M4  = toJSVal (4 :: Int)
  toJSVal M5  = toJSVal (5 :: Int)
  toJSVal M6  = toJSVal (6 :: Int)
  toJSVal M10 = toJSVal (10 :: Int)
  toJSVal M12 = toJSVal (12 :: Int)
  toJSVal M15 = toJSVal (15 :: Int)
  toJSVal M20 = toJSVal (20 :: Int)
  toJSVal M30 = toJSVal (30 :: Int)

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
