{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE RankNTypes            #-}
module React.Flux.Rn.Components.View (
    module React.Flux.Rn.Components.View,
    module React.Flux.Rn.Props.ViewProps,
    module React.Flux.Rn.StyleProps.ViewStyleProps,
    module React.Flux.Rn.StyleProps.LayoutStyleProps,
    module React.Flux.Rn.StyleProps.ShadowStyleProps,
    module React.Flux.Rn.StyleProps.TransformsStyleProps,
    module React.Flux.Rn.Props.CommonProps
) where

import Prelude                       (fmap, (.))
import React.Flux                    (ReactElementM, foreign_)
import React.Flux.Rn.Properties      (Has, Props, props)
import React.Flux.Rn.Props.CommonProps (style)
import React.Flux.Rn.Props.ViewProps hiding (Inset(..), OnLayoutVals(..))
import React.Flux.Rn.StyleProps.LayoutStyleProps hiding (borderTopWidth, borderRightWidth, borderLeftWidth, borderBottomWidth, borderWidth, Display(..))
import React.Flux.Rn.StyleProps.ShadowStyleProps hiding (ContentSize(..))
import React.Flux.Rn.StyleProps.TransformsStyleProps
import React.Flux.Rn.StyleProps.ViewStyleProps hiding (Visibility(..))


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



-- ViewStyleProps:

instance Has View "borderRightColor"
instance Has View "backfaceVisibility"
instance Has View "borderBottomColor"
instance Has View "borderBottomEndRadius"
instance Has View "borderBottomLeftRadius"
instance Has View "borderBottomRightRadius"
instance Has View "borderBottomStartRadius"
--instance Has View "borderBottomWidth"
instance Has View "borderColor"
instance Has View "borderEndColor"
--instance Has View "borderLeftWidth"
instance Has View "borderRadius"
instance Has View "backgroundColor"
--instance Has View "borderRightWidth"
instance Has View "borderStartColor"
instance Has View "borderStyle"
instance Has View "borderTopColor"
instance Has View "borderTopEndRadius"
instance Has View "borderTopLeftRadius"
instance Has View "borderTopRightRadius"
instance Has View "borderTopStartRadius"
--instance Has View "borderTopWidth"
--instance Has View "borderWidth"
instance Has View "opacity"
instance Has View "elevation"

-- LayoutStyleProps:

instance Has View "marginHorizontal"
instance Has View "alignContent"
instance Has View "alignSelf"
instance Has View "aspectRatio"
instance Has View "borderBottomWidth"
instance Has View "borderEndWidth"
instance Has View "borderLeftWidth"
instance Has View "borderRightWidth"
instance Has View "borderStartWidth"
instance Has View "borderTopWidth"
instance Has View "borderWidth"
instance Has View "bottom"
instance Has View "display"
instance Has View "end"
instance Has View "flex"
instance Has View "flexBasis"
instance Has View "flexDirection"
instance Has View "flexGrow"
instance Has View "flexShrink"
instance Has View "flexWrap"
instance Has View "height"
instance Has View "justifyContent"
instance Has View "left"
instance Has View "margin"
instance Has View "marginBottom"
instance Has View "marginEnd"
instance Has View "alignItems"
instance Has View "marginLeft"
instance Has View "marginRight"
instance Has View "marginStart"
instance Has View "marginTop"
instance Has View "marginVertical"
instance Has View "maxHeight"
instance Has View "maxWidth"
instance Has View "minHeight"
instance Has View "minWidth"
instance Has View "overflow"
instance Has View "padding"
instance Has View "paddingBottom"
instance Has View "paddingEnd"
instance Has View "paddingHorizontal"
instance Has View "paddingLeft"
instance Has View "paddingRight"
instance Has View "paddingStart"
instance Has View "paddingTop"
instance Has View "paddingVertical"
instance Has View "position"
instance Has View "right"
instance Has View "start"
instance Has View "top"
instance Has View "width"
instance Has View "zIndex"
instance Has View "direction"

-- ShadowStyleProps:

instance Has View "shadowColor"
instance Has View "shadowOffset"
instance Has View "shadowOpacity"
instance Has View "shadowRadius"

-- TransformsStyleProps:

instance Has View "transform"
