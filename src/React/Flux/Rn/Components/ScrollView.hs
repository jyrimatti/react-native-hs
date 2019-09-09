{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE NoImplicitPrelude     #-}
{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE RankNTypes            #-}
module React.Flux.Rn.Components.ScrollView (
    module React.Flux.Rn.Components.ScrollView,
    module ScrollViewProps,
    module ViewProps,
    module ViewStyleProps,
    module LayoutStyleProps,
    module ShadowStyleProps,
    module TransformsStyleProps,
    ViewProps.AccessibilityComponentTypes(..),
    ViewProps.AccessibilityLiveRegion(..),
    ViewProps.AccessibilityTraits(..),
    ViewProps.ImportantForAccessibility(..),
    ViewProps.Inset(Inset),
    ViewProps.OnLayout(OnLayout),
    ViewProps.PointerEvents(..),
    ViewProps.SyntheticTouchEvent(SyntheticTouchEvent),
    ScrollViewProps.Color (..),
    ScrollViewProps.ContentInsetAdjustmentBehavior (..),
    ScrollViewProps.ContentOffset (ContentOffset),
    ScrollViewProps.DecelerationRate (..),
    ScrollViewProps.IndicatorStyle (..),
    ScrollViewProps.KeyboardDismissMode (..),
    ScrollViewProps.KeyboardShouldPersistTaps (..),
    ScrollViewProps.OverScrollMode (..),
    ScrollViewProps.SnapToAlignment (..)
) where

import Prelude                             (fmap, (.))
import React.Flux                          (ReactElementM, foreign_)
import React.Flux.Rn.Properties            (Has, Props, props)
import React.Flux.Rn.Props.ScrollViewProps as ScrollViewProps
import React.Flux.Rn.Props.ViewProps       as ViewProps
import React.Flux.Rn.StyleProps.LayoutStyleProps as LayoutStyleProps
import React.Flux.Rn.StyleProps.ShadowStyleProps as ShadowStyleProps
import React.Flux.Rn.StyleProps.TransformsStyleProps as TransformsStyleProps
import React.Flux.Rn.StyleProps.ViewStyleProps as ViewStyleProps hiding (borderBottomWidth, borderLeftWidth, borderRightWidth, borderTopWidth, borderWidth)


data ScrollView
scrollView :: [Props ScrollView handler] -> ReactElementM handler a -> ReactElementM handler a
scrollView = foreign_ "ScrollView" . fmap props



-- ScrollViewProps:

instance Has ScrollView "alwaysBounceVertical"
instance Has ScrollView "contentContainerStyle"
instance Has ScrollView "keyboardDismissMode"
instance Has ScrollView "keyboardShouldPersistTaps"
instance Has ScrollView "onContentSizeChange"
instance Has ScrollView "onMomentumScrollBegin"
instance Has ScrollView "onMomentumScrollEnd"
instance Has ScrollView "onScroll"
instance Has ScrollView "pagingEnabled"
instance Has ScrollView "refreshControl"
instance Has ScrollView "scrollEnabled"
instance Has ScrollView "showsHorizontalScrollIndicator"
instance Has ScrollView "showsVerticalScrollIndicator"
instance Has ScrollView "stickyHeaderIndices"
instance Has ScrollView "endFillColor"
instance Has ScrollView "overScrollMode"
instance Has ScrollView "scrollPerfTag"
instance Has ScrollView "alwaysBounceHorizontal"
instance Has ScrollView "horizontal"
instance Has ScrollView "automaticallyAdjustContentInsets"
instance Has ScrollView "bounces"
instance Has ScrollView "bouncesZoom"
instance Has ScrollView "canCancelContentTouches"
instance Has ScrollView "centerContent"
instance Has ScrollView "contentInset"
instance Has ScrollView "contentInsetAdjustmentBehavior"
instance Has ScrollView "contentOffset"
instance Has ScrollView "decelerationRate"
instance Has ScrollView "directionalLockEnabled"
instance Has ScrollView "indicatorStyle"
instance Has ScrollView "maximumZoomScale"
instance Has ScrollView "minimumZoomScale"
instance Has ScrollView "pinchGestureEnabled"
instance Has ScrollView "scrollEventThrottle"
instance Has ScrollView "scrollIndicatorInsets"
instance Has ScrollView "scrollsToTop"
instance Has ScrollView "snapToAlignment"
instance Has ScrollView "snapToInterval"
instance Has ScrollView "zoomScale"


-- ViewProps:

instance Has ScrollView "onStartShouldSetResponder"
instance Has ScrollView "accessibilityLabel"
instance Has ScrollView "hitSlop"
instance Has ScrollView "nativeID"
instance Has ScrollView "onAccessibilityTap"
instance Has ScrollView "onLayout"
instance Has ScrollView "onMagicTap"
instance Has ScrollView "onMoveShouldSetResponder"
instance Has ScrollView "onMoveShouldSetResponderCapture"
instance Has ScrollView "onResponderGrant"
instance Has ScrollView "onResponderMove"
instance Has ScrollView "onResponderReject"
instance Has ScrollView "onResponderRelease"
instance Has ScrollView "onResponderTerminate"
instance Has ScrollView "onResponderTerminationRequest"
instance Has ScrollView "accessible"
instance Has ScrollView "onStartShouldSetResponderCapture"
instance Has ScrollView "pointerEvents"
instance Has ScrollView "removeClippedSubviews"
instance Has ScrollView "style"
instance Has ScrollView "testID"
instance Has ScrollView "accessibilityComponentType"
instance Has ScrollView "accessibilityLiveRegion"
instance Has ScrollView "collapsable"
instance Has ScrollView "importantForAccessibility"
instance Has ScrollView "needsOffscreenAlphaCompositing"
instance Has ScrollView "renderToHardwareTextureAndroid"
instance Has ScrollView "accessibilityTraits"
instance Has ScrollView "accessibilityViewIsModal"
instance Has ScrollView "shouldRasterizeIOS"


-- TODO: methods




-- ViewStyleProps:

instance Has ScrollView "borderRightColor"
instance Has ScrollView "backfaceVisibility"
instance Has ScrollView "borderBottomColor"
instance Has ScrollView "borderBottomEndRadius"
instance Has ScrollView "borderBottomLeftRadius"
instance Has ScrollView "borderBottomRightRadius"
instance Has ScrollView "borderBottomStartRadius"
--instance Has ScrollView "borderBottomWidth"
instance Has ScrollView "borderColor"
instance Has ScrollView "borderEndColor"
--instance Has ScrollView "borderLeftWidth"
instance Has ScrollView "borderRadius"
instance Has ScrollView "backgroundColor"
--instance Has ScrollView "borderRightWidth"
instance Has ScrollView "borderStartColor"
instance Has ScrollView "borderStyle"
instance Has ScrollView "borderTopColor"
instance Has ScrollView "borderTopEndRadius"
instance Has ScrollView "borderTopLeftRadius"
instance Has ScrollView "borderTopRightRadius"
instance Has ScrollView "borderTopStartRadius"
--instance Has ScrollView "borderTopWidth"
--instance Has ScrollView "borderWidth"
instance Has ScrollView "opacity"
instance Has ScrollView "elevation"

-- LayoutStyleProps:

instance Has ScrollView "marginHorizontal"
instance Has ScrollView "alignContent"
instance Has ScrollView "alignSelf"
instance Has ScrollView "aspectRatio"
instance Has ScrollView "borderBottomWidth"
instance Has ScrollView "borderEndWidth"
instance Has ScrollView "borderLeftWidth"
instance Has ScrollView "borderRightWidth"
instance Has ScrollView "borderStartWidth"
instance Has ScrollView "borderTopWidth"
instance Has ScrollView "borderWidth"
instance Has ScrollView "bottom"
instance Has ScrollView "display"
instance Has ScrollView "end"
instance Has ScrollView "flex"
instance Has ScrollView "flexBasis"
instance Has ScrollView "flexDirection"
instance Has ScrollView "flexGrow"
instance Has ScrollView "flexShrink"
instance Has ScrollView "flexWrap"
instance Has ScrollView "height"
instance Has ScrollView "justifyContent"
instance Has ScrollView "left"
instance Has ScrollView "margin"
instance Has ScrollView "marginBottom"
instance Has ScrollView "marginEnd"
instance Has ScrollView "alignItems"
instance Has ScrollView "marginLeft"
instance Has ScrollView "marginRight"
instance Has ScrollView "marginStart"
instance Has ScrollView "marginTop"
instance Has ScrollView "marginVertical"
instance Has ScrollView "maxHeight"
instance Has ScrollView "maxWidth"
instance Has ScrollView "minHeight"
instance Has ScrollView "minWidth"
instance Has ScrollView "overflow"
instance Has ScrollView "padding"
instance Has ScrollView "paddingBottom"
instance Has ScrollView "paddingEnd"
instance Has ScrollView "paddingHorizontal"
instance Has ScrollView "paddingLeft"
instance Has ScrollView "paddingRight"
instance Has ScrollView "paddingStart"
instance Has ScrollView "paddingTop"
instance Has ScrollView "paddingVertical"
instance Has ScrollView "position"
instance Has ScrollView "right"
instance Has ScrollView "start"
instance Has ScrollView "top"
instance Has ScrollView "width"
instance Has ScrollView "zIndex"
instance Has ScrollView "direction"

-- ShadowStyleProps:

instance Has ScrollView "shadowColor"
instance Has ScrollView "shadowOffset"
instance Has ScrollView "shadowOpacity"
instance Has ScrollView "shadowRadius"

-- TransformsStyleProps:

instance Has ScrollView "transform"