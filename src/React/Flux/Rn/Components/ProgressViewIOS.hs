{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE NoImplicitPrelude     #-}
{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE TypeApplications      #-}
module React.Flux.Rn.Components.ProgressViewIOS (
    module React.Flux.Rn.Components.ProgressViewIOS,
    Color(..), ImageSource(..),
    ProgressViewStyle(..), UnitInterval,
    ViewProps.AccessibilityComponentTypes(..),
    ViewProps.AccessibilityLiveRegion(..),
    ViewProps.AccessibilityTraits(..),
    ViewProps.ImportantForAccessibility(..),
    ViewProps.Inset(Inset),
    ViewProps.OnLayout(OnLayout),
    ViewProps.PointerEvents(..),
    ViewProps.SyntheticTouchEvent(SyntheticTouchEvent)
) where

import           Prelude                       (fmap)
import           Prelude                       ((.))
import           React.Flux                    (ReactElementM, foreign_)
import           React.Flux.Rn.Properties      (Has, Props, prop, props)
import qualified React.Flux.Rn.Props.ViewProps as ViewProps
import           React.Flux.Rn.Types           (Color (..), ImageSource (..),
                                                ProgressViewStyle (..),
                                                UnitInterval)



data ProgressViewIOS
progressViewIOS :: [Props ProgressViewIOS handler] -> ReactElementM handler a -> ReactElementM handler a
progressViewIOS = foreign_ "ProgressViewIOS" . fmap props



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
