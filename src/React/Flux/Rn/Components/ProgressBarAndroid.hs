{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE DeriveGeneric         #-}
{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings     #-}
module React.Flux.Rn.Components.ProgressBarAndroid (
    module React.Flux.Rn.Components.ProgressBarAndroid,
    module React.Flux.Rn.Types,
    module React.Flux.Rn.Props.ViewProps,
    module React.Flux.Rn.Props.CommonProps
) where

import GHC.Generics               (Generic)
import GHCJS.Marshal              (ToJSVal (..))
import Prelude                    (Show, String, Bool, fmap, (.))
import React.Flux                      (ReactElementM, foreign_)
import React.Flux.Rn.Properties        (Has, Props, prop, props)
import React.Flux.Rn.Props.CommonProps (color, Color(..))
import React.Flux.Rn.Props.ViewProps
import React.Flux.Rn.Types             (UnitInterval)



data ProgressBarAndroid
progressBarAndroid :: [Props ProgressBarAndroid handler] -> ReactElementM handler a -> ReactElementM handler a
progressBarAndroid = foreign_ "ProgressBarAndroid" . fmap props



data StyleAttr = Horizontal | Normal | Small | Large | Inverse | SmallInverse | LargeInverse
  deriving (Show, Generic)
instance ToJSVal StyleAttr where
  toJSVal Horizontal   = toJSVal ("Horizontal" :: String)
  toJSVal Normal       = toJSVal ("Normal" :: String)
  toJSVal Small        = toJSVal ("Small" :: String)
  toJSVal Large        = toJSVal ("Large" :: String)
  toJSVal Inverse      = toJSVal ("Inverse" :: String)
  toJSVal SmallInverse = toJSVal ("SmallInverse" :: String)
  toJSVal LargeInverse = toJSVal ("LargeInverse" :: String)


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

