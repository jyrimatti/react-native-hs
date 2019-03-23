{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE NoImplicitPrelude     #-}
{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE TypeApplications      #-}
module React.Flux.Rn.Components.SafeAreaView (
    module React.Flux.Rn.Components.SafeAreaView,
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
import qualified React.Flux.Rn.Props.ViewProps as ViewProps



data SafeAreaView
safeAreaView :: [Props SafeAreaView handler] -> ReactElementM handler a -> ReactElementM handler a
safeAreaView = foreign_ "SafeAreaView" . fmap props



-- ViewProps:

instance Has SafeAreaView "onStartShouldSetResponder"
instance Has SafeAreaView "accessibilityLabel"
instance Has SafeAreaView "hitSlop"
instance Has SafeAreaView "nativeID"
instance Has SafeAreaView "onAccessibilityTap"
instance Has SafeAreaView "onLayout"
instance Has SafeAreaView "onMagicTap"
instance Has SafeAreaView "onMoveShouldSetResponder"
instance Has SafeAreaView "onMoveShouldSetResponderCapture"
instance Has SafeAreaView "onResponderGrant"
instance Has SafeAreaView "onResponderMove"
instance Has SafeAreaView "onResponderReject"
instance Has SafeAreaView "onResponderRelease"
instance Has SafeAreaView "onResponderTerminate"
instance Has SafeAreaView "onResponderTerminationRequest"
instance Has SafeAreaView "accessible"
instance Has SafeAreaView "onStartShouldSetResponderCapture"
instance Has SafeAreaView "pointerEvents"
instance Has SafeAreaView "removeClippedSubviews"
instance Has SafeAreaView "style"
instance Has SafeAreaView "testID"
instance Has SafeAreaView "accessibilityComponentType"
instance Has SafeAreaView "accessibilityLiveRegion"
instance Has SafeAreaView "collapsable"
instance Has SafeAreaView "importantForAccessibility"
instance Has SafeAreaView "needsOffscreenAlphaCompositing"
instance Has SafeAreaView "renderToHardwareTextureAndroid"
instance Has SafeAreaView "accessibilityTraits"
instance Has SafeAreaView "accessibilityViewIsModal"
instance Has SafeAreaView "shouldRasterizeIOS"

