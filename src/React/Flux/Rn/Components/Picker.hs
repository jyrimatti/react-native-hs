{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE DeriveGeneric         #-}
{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE RankNTypes            #-}
module React.Flux.Rn.Components.Picker (
    module React.Flux.Rn.Components.Picker,
    module React.Flux.Rn.Props.ViewProps,
    module React.Flux.Rn.StyleProps.ViewStyleProps,
    module React.Flux.Rn.StyleProps.LayoutStyleProps,
    module React.Flux.Rn.StyleProps.ShadowStyleProps,
    module React.Flux.Rn.StyleProps.TransformsStyleProps,
    PickerMode(..)
) where

import GHC.Generics               (Generic)
import GHCJS.Marshal                 (FromJSVal, ToJSVal(..))
import Numeric.Natural               (Natural)
import Prelude                       (Bool, String, (.), fmap, Show)
import React.Flux                    (ReactElementM, foreign_)
import React.Flux.Rn.Components.Text (Text)
import React.Flux.Rn.Events          (EventHandlerType, on2)
import React.Flux.Rn.Properties      (Has, Props, Styles, nestedProp, prop, props)
import qualified React.Flux.Rn.Properties as P
import React.Flux.Rn.Props.ViewProps hiding (Inset(..), OnLayoutVals(..))
import React.Flux.Rn.StyleProps.LayoutStyleProps hiding (Display(..))
import React.Flux.Rn.StyleProps.ShadowStyleProps hiding (ContentSize(..))
import React.Flux.Rn.StyleProps.TransformsStyleProps

import React.Flux.Rn.StyleProps.ViewStyleProps hiding (Visibility(..), borderBottomWidth, borderLeftWidth, borderRightWidth, borderTopWidth, borderWidth)


data Picker
picker :: [Props Picker handler] -> ReactElementM handler a -> ReactElementM handler a
picker = foreign_ "Picker" . fmap props


data PickerMode = Dialog | Dropdown
  deriving (Show, Generic)
instance ToJSVal PickerMode where
  toJSVal Dialog   = toJSVal ("dialog" :: String)
  toJSVal Dropdown = toJSVal ("dropdown" :: String)


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

color :: Color -> Styles Picker handler
color = P.style "color"

instance Has Picker "onValueChange"
instance Has Picker "selectedValue"
instance Has Picker "enabled"
instance Has Picker "mode"
instance Has Picker "prompt"
instance Has Picker "itemStyle"
instance Has Picker "color"


-- TODO: methods


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



-- ViewStyleProps:

instance Has Picker "borderRightColor"
instance Has Picker "backfaceVisibility"
instance Has Picker "borderBottomColor"
instance Has Picker "borderBottomEndRadius"
instance Has Picker "borderBottomLeftRadius"
instance Has Picker "borderBottomRightRadius"
instance Has Picker "borderBottomStartRadius"
--instance Has Picker "borderBottomWidth"
instance Has Picker "borderColor"
instance Has Picker "borderEndColor"
--instance Has Picker "borderLeftWidth"
instance Has Picker "borderRadius"
instance Has Picker "backgroundColor"
--instance Has Picker "borderRightWidth"
instance Has Picker "borderStartColor"
instance Has Picker "borderStyle"
instance Has Picker "borderTopColor"
instance Has Picker "borderTopEndRadius"
instance Has Picker "borderTopLeftRadius"
instance Has Picker "borderTopRightRadius"
instance Has Picker "borderTopStartRadius"
--instance Has Picker "borderTopWidth"
--instance Has Picker "borderWidth"
instance Has Picker "opacity"
instance Has Picker "elevation"

-- LayoutStyleProps:

instance Has Picker "marginHorizontal"
instance Has Picker "alignContent"
instance Has Picker "alignSelf"
instance Has Picker "aspectRatio"
instance Has Picker "borderBottomWidth"
instance Has Picker "borderEndWidth"
instance Has Picker "borderLeftWidth"
instance Has Picker "borderRightWidth"
instance Has Picker "borderStartWidth"
instance Has Picker "borderTopWidth"
instance Has Picker "borderWidth"
instance Has Picker "bottom"
instance Has Picker "display"
instance Has Picker "end"
instance Has Picker "flex"
instance Has Picker "flexBasis"
instance Has Picker "flexDirection"
instance Has Picker "flexGrow"
instance Has Picker "flexShrink"
instance Has Picker "flexWrap"
instance Has Picker "height"
instance Has Picker "justifyContent"
instance Has Picker "left"
instance Has Picker "margin"
instance Has Picker "marginBottom"
instance Has Picker "marginEnd"
instance Has Picker "alignItems"
instance Has Picker "marginLeft"
instance Has Picker "marginRight"
instance Has Picker "marginStart"
instance Has Picker "marginTop"
instance Has Picker "marginVertical"
instance Has Picker "maxHeight"
instance Has Picker "maxWidth"
instance Has Picker "minHeight"
instance Has Picker "minWidth"
instance Has Picker "overflow"
instance Has Picker "padding"
instance Has Picker "paddingBottom"
instance Has Picker "paddingEnd"
instance Has Picker "paddingHorizontal"
instance Has Picker "paddingLeft"
instance Has Picker "paddingRight"
instance Has Picker "paddingStart"
instance Has Picker "paddingTop"
instance Has Picker "paddingVertical"
instance Has Picker "position"
instance Has Picker "right"
instance Has Picker "start"
instance Has Picker "top"
instance Has Picker "width"
instance Has Picker "zIndex"
instance Has Picker "direction"

-- ShadowStyleProps:

instance Has Picker "shadowColor"
instance Has Picker "shadowOffset"
instance Has Picker "shadowOpacity"
instance Has Picker "shadowRadius"

-- TransformsStyleProps:

instance Has Picker "transform"
