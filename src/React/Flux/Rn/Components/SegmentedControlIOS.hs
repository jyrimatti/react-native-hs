{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE DeriveGeneric         #-}
{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings     #-}
module React.Flux.Rn.Components.SegmentedControlIOS (
    module React.Flux.Rn.Components.SegmentedControlIOS,
    module React.Flux.Rn.Props.ViewProps,
    module React.Flux.Rn.Props.CommonProps
) where

import Data.Aeson                 (FromJSON (..))
import GHC.Generics               (Generic)
import GHCJS.Marshal              (FromJSVal (..))
import Numeric.Natural               (Natural)
import Prelude                    (Show, Bool, String, fmap, (.))
import React.Flux                    (ReactElementM, foreign_)
import React.Flux.Rn.Events       (fromNativeJSON, EventHandlerType, on1)
import React.Flux.Rn.Properties      (Has, Props, prop, props)
import React.Flux.Rn.Props.CommonProps (tintColor, Color(..))
import React.Flux.Rn.Props.ViewProps



data SegmentedControlIOS
segmentedControlIOS :: [Props SegmentedControlIOS handler] -> ReactElementM handler a -> ReactElementM handler a
segmentedControlIOS = foreign_ "SegmentedControlIOS" . fmap props


newtype OnChange = OnChange {
    selectedSegmentIndex :: Natural
} deriving (Show, Generic)
instance FromJSON OnChange
instance FromJSVal OnChange where fromJSVal = fromNativeJSON


enabled :: Has c "enabled" => Bool -> Props c handler
enabled = prop "enabled"

momentary :: Has c "momentary" => Bool -> Props c handler
momentary = prop "momentary"

onChange :: Has c "onChange" => (OnChange -> EventHandlerType handler) -> Props c handler
onChange = on1 "onChange"

onValueChange :: (Has c "onValueChange", FromJSVal value) => (value -> EventHandlerType handler) -> Props c handler
onValueChange = on1 "onValueChange"

selectedIndex :: Has c "selectedIndex" => Natural -> Props c handler
selectedIndex = prop "selectedIndex"

--tintColor :: Has c "tintColor" => Color -> Props c handler
--tintColor = prop "tintColor"

values :: Has c "values" => [String] -> Props c handler
values = prop "values"



instance Has SegmentedControlIOS "enabled"
instance Has SegmentedControlIOS "momentary"
instance Has SegmentedControlIOS "onChange"
instance Has SegmentedControlIOS "onValueChange"
instance Has SegmentedControlIOS "selectedIndex"
instance Has SegmentedControlIOS "tintColor"
instance Has SegmentedControlIOS "values"

-- ViewProps:

instance Has SegmentedControlIOS "onStartShouldSetResponder"
instance Has SegmentedControlIOS "accessibilityLabel"
instance Has SegmentedControlIOS "hitSlop"
instance Has SegmentedControlIOS "nativeID"
instance Has SegmentedControlIOS "onAccessibilityTap"
instance Has SegmentedControlIOS "onLayout"
instance Has SegmentedControlIOS "onMagicTap"
instance Has SegmentedControlIOS "onMoveShouldSetResponder"
instance Has SegmentedControlIOS "onMoveShouldSetResponderCapture"
instance Has SegmentedControlIOS "onResponderGrant"
instance Has SegmentedControlIOS "onResponderMove"
instance Has SegmentedControlIOS "onResponderReject"
instance Has SegmentedControlIOS "onResponderRelease"
instance Has SegmentedControlIOS "onResponderTerminate"
instance Has SegmentedControlIOS "onResponderTerminationRequest"
instance Has SegmentedControlIOS "accessible"
instance Has SegmentedControlIOS "onStartShouldSetResponderCapture"
instance Has SegmentedControlIOS "pointerEvents"
instance Has SegmentedControlIOS "removeClippedSubviews"
instance Has SegmentedControlIOS "style"
instance Has SegmentedControlIOS "testID"
instance Has SegmentedControlIOS "accessibilityComponentType"
instance Has SegmentedControlIOS "accessibilityLiveRegion"
instance Has SegmentedControlIOS "collapsable"
instance Has SegmentedControlIOS "importantForAccessibility"
instance Has SegmentedControlIOS "needsOffscreenAlphaCompositing"
instance Has SegmentedControlIOS "renderToHardwareTextureAndroid"
instance Has SegmentedControlIOS "accessibilityTraits"
instance Has SegmentedControlIOS "accessibilityViewIsModal"
instance Has SegmentedControlIOS "shouldRasterizeIOS"


-- TODO: methods
