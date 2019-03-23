{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE NoImplicitPrelude     #-}
{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE RankNTypes            #-}
{-# LANGUAGE TypeApplications      #-}
module React.Flux.Rn.Components.PickerIOS (
    module React.Flux.Rn.Components.PickerIOS,
    ViewProps.AccessibilityComponentTypes(..),
    ViewProps.AccessibilityLiveRegion(..),
    ViewProps.AccessibilityTraits(..),
    ViewProps.ImportantForAccessibility(..),
    ViewProps.Inset(Inset),
    ViewProps.OnLayout(OnLayout),
    ViewProps.PointerEvents(..),
    ViewProps.SyntheticTouchEvent(SyntheticTouchEvent)
) where

import           GHCJS.Marshal                 (ToJSVal)
import           Prelude                       (fmap)
import           Prelude                       ((.))
import           React.Flux                    (ReactElementM, foreign_)
import           React.Flux.Rn.Components.Text (Text)
import           React.Flux.Rn.Events          (EventHandlerType, on0)
import           React.Flux.Rn.Properties      (Has, Props, Styles, nestedProp,
                                                prop, props)
import qualified React.Flux.Rn.Props.ViewProps as ViewProps



data PickerIOS
pickerIOS :: [Props PickerIOS handler] -> ReactElementM handler a -> ReactElementM handler a
pickerIOS = foreign_ "PickerIOS" . fmap props



itemStyle :: Has c "itemStyle" => [Styles Text handler] -> Props c handler
itemStyle = nestedProp "itemStyle"

onValueChange :: Has c "onValueChange" => EventHandlerType handler -> Props c handler
onValueChange = on0 "onValueChange"

selectedValue :: Has c "selectedValue" => ToJSVal value => value -> Props c handler
selectedValue = prop "selectedValue"



instance Has PickerIOS "itemStyle"
instance Has PickerIOS "onValueChange"
instance Has PickerIOS "selectedValue"

-- ViewProps:

instance Has PickerIOS "onStartShouldSetResponder"
instance Has PickerIOS "accessibilityLabel"
instance Has PickerIOS "hitSlop"
instance Has PickerIOS "nativeID"
instance Has PickerIOS "onAccessibilityTap"
instance Has PickerIOS "onLayout"
instance Has PickerIOS "onMagicTap"
instance Has PickerIOS "onMoveShouldSetResponder"
instance Has PickerIOS "onMoveShouldSetResponderCapture"
instance Has PickerIOS "onResponderGrant"
instance Has PickerIOS "onResponderMove"
instance Has PickerIOS "onResponderReject"
instance Has PickerIOS "onResponderRelease"
instance Has PickerIOS "onResponderTerminate"
instance Has PickerIOS "onResponderTerminationRequest"
instance Has PickerIOS "accessible"
instance Has PickerIOS "onStartShouldSetResponderCapture"
instance Has PickerIOS "pointerEvents"
instance Has PickerIOS "removeClippedSubviews"
instance Has PickerIOS "style"
instance Has PickerIOS "testID"
instance Has PickerIOS "accessibilityComponentType"
instance Has PickerIOS "accessibilityLiveRegion"
instance Has PickerIOS "collapsable"
instance Has PickerIOS "importantForAccessibility"
instance Has PickerIOS "needsOffscreenAlphaCompositing"
instance Has PickerIOS "renderToHardwareTextureAndroid"
instance Has PickerIOS "accessibilityTraits"
instance Has PickerIOS "accessibilityViewIsModal"
instance Has PickerIOS "shouldRasterizeIOS"
