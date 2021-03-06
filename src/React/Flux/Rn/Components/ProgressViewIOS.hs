{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE DeriveGeneric         #-}
{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings     #-}
module React.Flux.Rn.Components.ProgressViewIOS (
    module React.Flux.Rn.Components.ProgressViewIOS,
    module React.Flux.Rn.Types.Color,
    module React.Flux.Rn.Types,
    module React.Flux.Rn.Props.ViewProps,
    module React.Flux.Rn.Types.ImageSource
) where

import GHC.Generics               (Generic)
import GHCJS.Marshal              (ToJSVal (..))
import Prelude                    (Show, String, fmap, (.))
import React.Flux                    (ReactElementM, foreign_)
import React.Flux.Rn.Properties      (Has, Props, prop, props)
import React.Flux.Rn.Props.ViewProps hiding (OnLayoutVals(..))
import React.Flux.Rn.Types       (UnitInterval)
import React.Flux.Rn.Types.Color
import React.Flux.Rn.Types.ImageSource

data ProgressViewIOS
progressViewIOS :: [Props ProgressViewIOS handler] -> ReactElementM handler a -> ReactElementM handler a
progressViewIOS = foreign_ "ProgressViewIOS" . fmap props



data ProgressViewStyle = Default | Bar
  deriving (Show, Generic)
instance ToJSVal ProgressViewStyle where
  toJSVal Default = toJSVal ("default" :: String)
  toJSVal Bar     = toJSVal ("bar" :: String)


progress :: Has c "progress" => UnitInterval -> Props c handler
progress = prop "progress"

progressImage :: Has c "progressImage" => ImageSource -> Props c handler
progressImage = prop "progressImage"

progressTintColor :: Has c "progressTintColor" => Color -> Props c handler
progressTintColor = prop "progressTintColor"

progressViewStyle :: Has c "progressViewStyle" => ProgressViewStyle -> Props c handler
progressViewStyle = prop "progressViewStyle"

trackImage :: Has c "trackImage" => ImageSource -> Props c handler
trackImage = prop "trackImage"

trackTintColor :: Has c "trackTintColor" => Color -> Props c handler
trackTintColor = prop "trackTintColor"



instance Has ProgressViewIOS "progress"
instance Has ProgressViewIOS "progressImage"
instance Has ProgressViewIOS "progressTintColor"
instance Has ProgressViewIOS "progressViewStyle"
instance Has ProgressViewIOS "trackImage"
instance Has ProgressViewIOS "trackTintColor"

-- ViewProps:

instance Has ProgressViewIOS "onStartShouldSetResponder"
instance Has ProgressViewIOS "accessibilityLabel"
instance Has ProgressViewIOS "hitSlop"
instance Has ProgressViewIOS "nativeID"
instance Has ProgressViewIOS "onAccessibilityTap"
instance Has ProgressViewIOS "onLayout"
instance Has ProgressViewIOS "onMagicTap"
instance Has ProgressViewIOS "onMoveShouldSetResponder"
instance Has ProgressViewIOS "onMoveShouldSetResponderCapture"
instance Has ProgressViewIOS "onResponderGrant"
instance Has ProgressViewIOS "onResponderMove"
instance Has ProgressViewIOS "onResponderReject"
instance Has ProgressViewIOS "onResponderRelease"
instance Has ProgressViewIOS "onResponderTerminate"
instance Has ProgressViewIOS "onResponderTerminationRequest"
instance Has ProgressViewIOS "accessible"
instance Has ProgressViewIOS "onStartShouldSetResponderCapture"
instance Has ProgressViewIOS "pointerEvents"
instance Has ProgressViewIOS "removeClippedSubviews"
instance Has ProgressViewIOS "style"
instance Has ProgressViewIOS "testID"
instance Has ProgressViewIOS "accessibilityComponentType"
instance Has ProgressViewIOS "accessibilityLiveRegion"
instance Has ProgressViewIOS "collapsable"
instance Has ProgressViewIOS "importantForAccessibility"
instance Has ProgressViewIOS "needsOffscreenAlphaCompositing"
instance Has ProgressViewIOS "renderToHardwareTextureAndroid"
instance Has ProgressViewIOS "accessibilityTraits"
instance Has ProgressViewIOS "accessibilityViewIsModal"
instance Has ProgressViewIOS "shouldRasterizeIOS"
