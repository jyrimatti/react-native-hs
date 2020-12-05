{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE DeriveGeneric         #-}
{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings     #-}
module React.Flux.Rn.Components.ActivityIndicator (
    module React.Flux.Rn.Components.ActivityIndicator,
    module React.Flux.Rn.Props.CommonProps,
    module React.Flux.Rn.Props.ViewProps
) where

import GHC.Generics               (Generic)
import GHCJS.Marshal              (ToJSVal (..))
import Numeric.Natural            (Natural)
import Prelude                    (Show, String, Bool, fmap, (.))
import React.Flux                      (ReactElementM, foreign_)
import React.Flux.Rn.Properties        (Has, Props, prop, props)

import React.Flux.Rn.Props.CommonProps (color, Color(..))
import React.Flux.Rn.Props.ViewProps

data ActivityIndicator
activityIndicator :: [Props ActivityIndicator handler] -> ReactElementM handler a -> ReactElementM handler a
activityIndicator = foreign_ "ActivityIndicator" . fmap props


data ActivityIndicatorSize = Small | Large | Size Natural
  deriving (Show, Generic)
instance ToJSVal ActivityIndicatorSize where
  toJSVal Small    = toJSVal ("small" :: String)
  toJSVal Large    = toJSVal ("large" :: String)
  toJSVal (Size x) = toJSVal x


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

