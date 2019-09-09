{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE NoImplicitPrelude     #-}
{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE RankNTypes            #-}
module React.Flux.Rn.Props.ViewProps (
    module React.Flux.Rn.Props.ViewProps,
    AccessibilityComponentTypes(..),
    AccessibilityLiveRegion(..),
    AccessibilityTraits(..),
    ImportantForAccessibility(..), Inset(Inset),
    OnLayout(OnLayout), PointerEvents(..),
    SyntheticTouchEvent(SyntheticTouchEvent)
) where

import Prelude                  (Bool, String)
import React.Flux.Rn.Events     (EventHandlerType, on0, on1, ret1)
import React.Flux.Rn.Properties (Has, Props, prop)
import React.Flux.Rn.Types      (AccessibilityComponentTypes (..),
                                           AccessibilityLiveRegion (..),
                                           AccessibilityTraits (..),
                                           ImportantForAccessibility (..),
                                           Inset (Inset), OnLayout (OnLayout),
                                           PointerEvents (..),
                                           SyntheticTouchEvent (SyntheticTouchEvent))

data View

onStartShouldSetResponder :: Has component "onStartShouldSetResponder" => (SyntheticTouchEvent -> Bool) -> Props component handler
onStartShouldSetResponder = ret1 "onStartShouldSetResponder"

accessibilityLabel :: Has component "accessibilityLabel" => String -> Props component handler
accessibilityLabel = prop "accessibilityLabel"

hitSlop :: Has component "hitSlop" => Inset -> Props component handler
hitSlop = prop "hitSlop"

nativeID :: Has component "nativeID" => String -> Props component handler
nativeID = prop "nativeID"

onAccessibilityTap :: forall component handler. Has component "onAccessibilityTap" => EventHandlerType handler -> Props component handler
onAccessibilityTap = on0 "onAccessibilityTap"

onLayout :: forall component handler. Has component "onLayout" => (OnLayout -> EventHandlerType handler) -> Props component handler
onLayout = on1 "onLayout"

onMagicTap :: forall component handler. Has component "onMagicTap" => EventHandlerType handler -> Props component handler
onMagicTap = on0 "onMagicTap"

onMoveShouldSetResponder :: Has component "onMoveShouldSetResponder" => (SyntheticTouchEvent -> Bool) -> Props component handler
onMoveShouldSetResponder = ret1 "onMoveShouldSetResponder"

onMoveShouldSetResponderCapture :: Has component "onMoveShouldSetResponderCapture" => (SyntheticTouchEvent -> Bool) -> Props component handler
onMoveShouldSetResponderCapture = ret1 "onMoveShouldSetResponderCapture"

onResponderGrant :: forall component handler. Has component "onResponderGrant" => (SyntheticTouchEvent -> EventHandlerType handler) -> Props component handler
onResponderGrant = on1 "onResponderGrant"

onResponderMove :: forall component handler. Has component "onResponderMove" => (SyntheticTouchEvent -> EventHandlerType handler) -> Props component handler
onResponderMove = on1 "onResponderMove"

onResponderReject :: forall component handler. Has component "onResponderReject" => (SyntheticTouchEvent -> EventHandlerType handler) -> Props component handler
onResponderReject = on1 "onResponderReject"

onResponderRelease :: forall component handler. Has component "onResponderRelease" => (SyntheticTouchEvent -> EventHandlerType handler) -> Props component handler
onResponderRelease = on1 "onResponderRelease"

onResponderTerminate :: forall component handler. Has component "onResponderTerminate" => (SyntheticTouchEvent -> EventHandlerType handler) -> Props component handler
onResponderTerminate = on1 "onResponderTerminate"

onResponderTerminationRequest :: forall component handler. Has component "onResponderTerminationRequest" => (SyntheticTouchEvent -> EventHandlerType handler) -> Props component handler
onResponderTerminationRequest = on1 "onResponderTerminationRequest"

accessible :: Has component "accessible" => Bool -> Props component handler
accessible = prop "accessible"

onStartShouldSetResponderCapture :: Has component "onStartShouldSetResponderCapture" => (SyntheticTouchEvent -> Bool) -> Props component handler
onStartShouldSetResponderCapture = ret1 "onStartShouldSetResponderCapture"

pointerEvents :: Has component "pointerEvents" => PointerEvents -> Props component handler
pointerEvents = prop "pointerEvents"

removeClippedSubviews :: Has component "removeClippedSubviews" => Bool -> Props component handler
removeClippedSubviews = prop "removeClippedSubviews"

testID :: Has component "testID" => String -> Props component handler
testID = prop "testID"

-- Platform: Android
accessibilityComponentType :: Has component "accessibilityComponentType" => AccessibilityComponentTypes -> Props component handler
accessibilityComponentType = prop "accessibilityComponentType"

-- Platform: Android
accessibilityLiveRegion :: Has component "accessibilityLiveRegion" => AccessibilityLiveRegion -> Props component handler
accessibilityLiveRegion = prop "accessibilityLiveRegion"

-- Platform: Android
collapsable :: Has component "collapsable" => Bool -> Props component handler
collapsable = prop "collapsable"

-- Platform: Android
importantForAccessibility :: Has component "importantForAccessibility" => ImportantForAccessibility -> Props component handler
importantForAccessibility = prop "importantForAccessibility"

-- Platform: Android
needsOffscreenAlphaCompositing :: Has component "needsOffscreenAlphaCompositing" => Bool -> Props component handler
needsOffscreenAlphaCompositing = prop "needsOffscreenAlphaCompositing"

-- Platform: Android
renderToHardwareTextureAndroid :: Has component "renderToHardwareTextureAndroid" => Bool -> Props component handler
renderToHardwareTextureAndroid = prop "renderToHardwareTextureAndroid"

-- Platform: IOS
accessibilityTraits :: Has component "accessibilityTraits" => AccessibilityTraits -> Props component handler
accessibilityTraits = prop "accessibilityTraits"

-- Platform: IOS
accessibilityViewIsModal :: Has component "accessibilityViewIsModal" => Bool -> Props component handler
accessibilityViewIsModal = prop "accessibilityViewIsModal"

-- Platform: IOS
shouldRasterizeIOS :: Has component "shouldRasterizeIOS" => Bool -> Props component handler
shouldRasterizeIOS = prop "shouldRasterizeIOS"

{-
instance Has c "onStartShouldSetResponder"
instance Has c "accessibilityLabel"
instance Has c "hitSlop"
instance Has c "nativeID"
instance Has c "onAccessibilityTap"
instance Has c "onLayout"
instance Has c "onMagicTap"
instance Has c "onMoveShouldSetResponder"
instance Has c "onMoveShouldSetResponderCapture"
instance Has c "onResponderGrant"
instance Has c "onResponderMove"
instance Has c "onResponderReject"
instance Has c "onResponderRelease"
instance Has c "onResponderTerminate"
instance Has c "onResponderTerminationRequest"
instance Has c "accessible"
instance Has c "onStartShouldSetResponderCapture"
instance Has c "pointerEvents"
instance Has c "removeClippedSubviews"
instance Has c "style"
instance Has c "testID"
instance Has c "accessibilityComponentType"
instance Has c "accessibilityLiveRegion"
instance Has c "collapsable"
instance Has c "importantForAccessibility"
instance Has c "needsOffscreenAlphaCompositing"
instance Has c "renderToHardwareTextureAndroid"
instance Has c "accessibilityTraits"
instance Has c "accessibilityViewIsModal"
instance Has c "shouldRasterizeIOS"
-}
