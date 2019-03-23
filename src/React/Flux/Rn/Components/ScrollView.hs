{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE NoImplicitPrelude     #-}
{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE RankNTypes            #-}
{-# LANGUAGE TypeApplications      #-}
module React.Flux.Rn.Components.ScrollView (
    module React.Flux.Rn.Components.ScrollView,
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

import           Prelude                             (fmap)
import           Prelude                             ((.))
import           React.Flux                          (ReactElementM, foreign_)
import           React.Flux.Rn.Properties            (Has, Props, props)
import qualified React.Flux.Rn.Props.ScrollViewProps as ScrollViewProps
import qualified React.Flux.Rn.Props.ViewProps       as ViewProps



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
