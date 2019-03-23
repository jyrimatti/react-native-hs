{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE NoImplicitPrelude     #-}
{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE RankNTypes            #-}
{-# LANGUAGE TypeApplications      #-}
module React.Flux.Rn.Components.Picker (
    module React.Flux.Rn.Components.Picker,
    PickerMode(..),
    ViewProps.AccessibilityComponentTypes(..),
    ViewProps.AccessibilityLiveRegion(..),
    ViewProps.AccessibilityTraits(..),
    ViewProps.ImportantForAccessibility(..),
    ViewProps.Inset(Inset),
    ViewProps.OnLayout(OnLayout),
    ViewProps.PointerEvents(..),
    ViewProps.SyntheticTouchEvent(SyntheticTouchEvent)
) where

import           GHCJS.Marshal                 (FromJSVal, ToJSVal)
import           Numeric.Natural               (Natural)
import           Prelude                       (fmap)
import           Prelude                       (Bool, String)
import           Prelude                       ((.))
import           React.Flux                    (ReactElementM, foreign_)
import           React.Flux.Rn.Components.Text (Text)
import           React.Flux.Rn.Events          (EventHandlerType, on2)
import           React.Flux.Rn.Properties      (Has, Props, Styles, nestedProp,
                                                prop, props)
import qualified React.Flux.Rn.Props.ViewProps as ViewProps
import           React.Flux.Rn.Types           (PickerMode (..))



data Picker
picker :: [Props Picker handler] -> ReactElementM handler a -> ReactElementM handler a
picker = foreign_ "Picker" . fmap props



onValueChange :: (Has c "onValueChange", FromJSVal value) => (value -> Natural -> EventHandlerType handler) -> Props c handler
onValueChange = on2 "onValueChange"

selectedValue :: (Has c "selectedValue", ToJSVal value) => value -> Props c handler
selectedValue = prop "selectedValue"

-- Platform: Android
enabled :: Has c "enabled" => Bool -> Props c handler
enabled = prop "enabled"

-- Platform: Android
mode :: Has c "mode" => PickerMode -> Props c handler
mode = prop "mode"

-- Platform: Android
prompt :: Has c "prompt" => String -> Props c handler
prompt = prop "prompt"

-- Platform: IOS
itemStyle :: Has c "itemStyle" => [Styles Text handler] -> Props c handler
itemStyle = nestedProp "itemStyle"



instance Has Picker "onValueChange"
instance Has Picker "selectedValue"
instance Has Picker "enabled"
instance Has Picker "mode"
instance Has Picker "prompt"
instance Has Picker "itemStyle"

-- ViewProps:

instance Has Picker "onStartShouldSetResponder"
instance Has Picker "accessibilityLabel"
instance Has Picker "hitSlop"
instance Has Picker "nativeID"
instance Has Picker "onAccessibilityTap"
instance Has Picker "onLayout"
instance Has Picker "onMagicTap"
instance Has Picker "onMoveShouldSetResponder"
instance Has Picker "onMoveShouldSetResponderCapture"
instance Has Picker "onResponderGrant"
instance Has Picker "onResponderMove"
instance Has Picker "onResponderReject"
instance Has Picker "onResponderRelease"
instance Has Picker "onResponderTerminate"
instance Has Picker "onResponderTerminationRequest"
instance Has Picker "accessible"
instance Has Picker "onStartShouldSetResponderCapture"
instance Has Picker "pointerEvents"
instance Has Picker "removeClippedSubviews"
instance Has Picker "style"
instance Has Picker "testID"
instance Has Picker "accessibilityComponentType"
instance Has Picker "accessibilityLiveRegion"
instance Has Picker "collapsable"
instance Has Picker "importantForAccessibility"
instance Has Picker "needsOffscreenAlphaCompositing"
instance Has Picker "renderToHardwareTextureAndroid"
instance Has Picker "accessibilityTraits"
instance Has Picker "accessibilityViewIsModal"
instance Has Picker "shouldRasterizeIOS"


-- TODO: methods
