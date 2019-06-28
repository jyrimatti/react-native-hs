{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE NoImplicitPrelude     #-}
{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE RankNTypes            #-}
{-# LANGUAGE TypeApplications      #-}
module React.Flux.Rn.Components.View (
    module React.Flux.Rn.Components.View,
    module ViewProps,
    CommonProps.style,
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
import           React.Flux.Rn.Properties      (Has, Props, props)
import qualified React.Flux.Rn.Props.CommonProps as CommonProps
import           React.Flux.Rn.Props.ViewProps (View)
import qualified React.Flux.Rn.Props.ViewProps as ViewProps



view :: [Props View handler] -> ReactElementM handler a -> ReactElementM handler a
view = foreign_ "View" . fmap props


-- CommonProps:
instance Has View "style"

-- ViewProps:

instance Has View "onStartShouldSetResponder"
instance Has View "accessibilityLabel"
instance Has View "hitSlop"
instance Has View "nativeID"
instance Has View "onAccessibilityTap"
instance Has View "onLayout"
instance Has View "onMagicTap"
instance Has View "onMoveShouldSetResponder"
instance Has View "onMoveShouldSetResponderCapture"
instance Has View "onResponderGrant"
instance Has View "onResponderMove"
instance Has View "onResponderReject"
instance Has View "onResponderRelease"
instance Has View "onResponderTerminate"
instance Has View "onResponderTerminationRequest"
instance Has View "accessible"
instance Has View "onStartShouldSetResponderCapture"
instance Has View "pointerEvents"
instance Has View "removeClippedSubviews"
instance Has View "testID"
instance Has View "accessibilityComponentType"
instance Has View "accessibilityLiveRegion"
instance Has View "collapsable"
instance Has View "importantForAccessibility"
instance Has View "needsOffscreenAlphaCompositing"
instance Has View "renderToHardwareTextureAndroid"
instance Has View "accessibilityTraits"
instance Has View "accessibilityViewIsModal"
instance Has View "shouldRasterizeIOS"
