{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE NoImplicitPrelude     #-}
{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE RankNTypes            #-}
{-# LANGUAGE TypeApplications      #-}
module React.Flux.Rn.Components.SnapshotViewIOS (
    module React.Flux.Rn.Components.SnapshotViewIOS,
    ViewProps.AccessibilityComponentTypes(..),
    ViewProps.AccessibilityLiveRegion(..),
    ViewProps.AccessibilityTraits(..),
    ViewProps.ImportantForAccessibility(..),
    ViewProps.Inset(Inset),
    ViewProps.OnLayout(OnLayout),
    ViewProps.PointerEvents(..),
    ViewProps.SyntheticTouchEvent(SyntheticTouchEvent)
) where

import           Prelude                       (String)
import           Prelude                       ((.))
import           Prelude                       (fmap)
import           React.Flux                    (ReactElementM, foreign_)
import           React.Flux.Rn.Events          (EventHandlerType, on0)
import           React.Flux.Rn.Properties      (Has, Props, prop, props)
import qualified React.Flux.Rn.Props.ViewProps as ViewProps



data SnapshotViewIOS
snapshotViewIOS :: [Props SnapshotViewIOS handler] -> ReactElementM handler a -> ReactElementM handler a
snapshotViewIOS = foreign_ "SnapshotViewIOS" . fmap props



onSnapshotReady :: Has c "onSnapshotReady" => EventHandlerType handler -> Props c handler
onSnapshotReady = on0 "onSnapshotReady"

testIdentifier :: Has c "testIdentifier" => String -> Props c handler
testIdentifier = prop "testIdentifier"



instance Has SnapshotViewIOS "onSnapshotReady"
instance Has SnapshotViewIOS "testIdentifier"

-- ViewProps:

instance Has SnapshotViewIOS "onStartShouldSetResponder"
instance Has SnapshotViewIOS "accessibilityLabel"
instance Has SnapshotViewIOS "hitSlop"
instance Has SnapshotViewIOS "nativeID"
instance Has SnapshotViewIOS "onAccessibilityTap"
instance Has SnapshotViewIOS "onLayout"
instance Has SnapshotViewIOS "onMagicTap"
instance Has SnapshotViewIOS "onMoveShouldSetResponder"
instance Has SnapshotViewIOS "onMoveShouldSetResponderCapture"
instance Has SnapshotViewIOS "onResponderGrant"
instance Has SnapshotViewIOS "onResponderMove"
instance Has SnapshotViewIOS "onResponderReject"
instance Has SnapshotViewIOS "onResponderRelease"
instance Has SnapshotViewIOS "onResponderTerminate"
instance Has SnapshotViewIOS "onResponderTerminationRequest"
instance Has SnapshotViewIOS "accessible"
instance Has SnapshotViewIOS "onStartShouldSetResponderCapture"
instance Has SnapshotViewIOS "pointerEvents"
instance Has SnapshotViewIOS "removeClippedSubviews"
instance Has SnapshotViewIOS "style"
instance Has SnapshotViewIOS "testID"
instance Has SnapshotViewIOS "accessibilityComponentType"
instance Has SnapshotViewIOS "accessibilityLiveRegion"
instance Has SnapshotViewIOS "collapsable"
instance Has SnapshotViewIOS "importantForAccessibility"
instance Has SnapshotViewIOS "needsOffscreenAlphaCompositing"
instance Has SnapshotViewIOS "renderToHardwareTextureAndroid"
instance Has SnapshotViewIOS "accessibilityTraits"
instance Has SnapshotViewIOS "accessibilityViewIsModal"
instance Has SnapshotViewIOS "shouldRasterizeIOS"

