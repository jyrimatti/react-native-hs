{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE NoImplicitPrelude     #-}
{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE RankNTypes            #-}
{-# LANGUAGE TypeApplications      #-}
module React.Flux.Rn.Components.FlatList (
    module React.Flux.Rn.Components.FlatList,
    module VirtualizedListProps,
    module ScrollViewProps,
    module ViewProps,
    Index,
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
    ScrollViewProps.ReactViewRef,
    ScrollViewProps.SnapToAlignment (..)
) where

import           GHCJS.Marshal                            (FromJSVal)
import           Numeric.Natural                          (Natural)
import           Prelude                                  ((.))
import           Prelude                                  (fmap)
import           Prelude                                  (String)
import           React.Flux                               (ReactElementM,
                                                           foreign_)
import           React.Flux.Rn.Properties                 (Has, Props, prop,
                                                           props)
import qualified React.Flux.Rn.Props.ScrollViewProps      as ScrollViewProps
import qualified React.Flux.Rn.Props.ViewProps            as ViewProps
import qualified React.Flux.Rn.Props.VirtualizedListProps as VirtualizedListProps
import           React.Flux.Rn.Types                      (Index)



data FlatList
flatList :: [Props FlatList handler] -> ReactElementM handler a -> ReactElementM handler a
flatList = foreign_ "FlatList" . fmap props



numColumns :: Has c "numColumns" => Natural -> Props c handler
numColumns = prop "numColumns"



instance Has FlatList "numColumns"

-- VirtualizedListProps:

instance Has FlatList "last"
instance Has FlatList "first"
--instance Has FlatList "horizontal"
instance Has FlatList "initialNumToRender"
instance Has FlatList "keyExtractor"
instance Has FlatList "disableVirtualization"
instance Has FlatList "maxToRenderPerBatch"
instance Has FlatList "onEndReachedThreshold"
--instance Has FlatList "scrollEventThrottle"
instance Has FlatList "updateCellsBatchingPeriod"
instance Has FlatList "windowSize"

-- ScrollViewProps:

instance Has FlatList "alwaysBounceVertical"
instance Has FlatList "contentContainerStyle"
instance Has FlatList "keyboardDismissMode"
instance Has FlatList "keyboardShouldPersistTaps"
instance Has FlatList "onContentSizeChange"
instance Has FlatList "onMomentumScrollBegin"
instance Has FlatList "onMomentumScrollEnd"
instance Has FlatList "onScroll"
instance Has FlatList "pagingEnabled"
instance Has FlatList "refreshControl"
instance Has FlatList "scrollEnabled"
instance Has FlatList "showsHorizontalScrollIndicator"
instance Has FlatList "showsVerticalScrollIndicator"
instance Has FlatList "stickyHeaderIndices"
instance Has FlatList "endFillColor"
instance Has FlatList "overScrollMode"
instance Has FlatList "scrollPerfTag"
instance Has FlatList "alwaysBounceHorizontal"
instance Has FlatList "horizontal"
instance Has FlatList "automaticallyAdjustContentInsets"
instance Has FlatList "bounces"
instance Has FlatList "bouncesZoom"
instance Has FlatList "canCancelContentTouches"
instance Has FlatList "centerContent"
instance Has FlatList "contentInset"
instance Has FlatList "contentInsetAdjustmentBehavior"
instance Has FlatList "contentOffset"
instance Has FlatList "decelerationRate"
instance Has FlatList "directionalLockEnabled"
instance Has FlatList "indicatorStyle"
instance Has FlatList "maximumZoomScale"
instance Has FlatList "minimumZoomScale"
instance Has FlatList "pinchGestureEnabled"
instance Has FlatList "scrollEventThrottle"
instance Has FlatList "scrollIndicatorInsets"
instance Has FlatList "scrollsToTop"
instance Has FlatList "snapToAlignment"
instance Has FlatList "snapToInterval"
instance Has FlatList "zoomScale"

-- ViewProps:

instance Has FlatList "onStartShouldSetResponder"
instance Has FlatList "accessibilityLabel"
instance Has FlatList "hitSlop"
instance Has FlatList "nativeID"
instance Has FlatList "onAccessibilityTap"
instance Has FlatList "onLayout"
instance Has FlatList "onMagicTap"
instance Has FlatList "onMoveShouldSetResponder"
instance Has FlatList "onMoveShouldSetResponderCapture"
instance Has FlatList "onResponderGrant"
instance Has FlatList "onResponderMove"
instance Has FlatList "onResponderReject"
instance Has FlatList "onResponderRelease"
instance Has FlatList "onResponderTerminate"
instance Has FlatList "onResponderTerminationRequest"
instance Has FlatList "accessible"
instance Has FlatList "onStartShouldSetResponderCapture"
instance Has FlatList "pointerEvents"
instance Has FlatList "removeClippedSubviews"
instance Has FlatList "style"
instance Has FlatList "testID"
instance Has FlatList "accessibilityComponentType"
instance Has FlatList "accessibilityLiveRegion"
instance Has FlatList "collapsable"
instance Has FlatList "importantForAccessibility"
instance Has FlatList "needsOffscreenAlphaCompositing"
instance Has FlatList "renderToHardwareTextureAndroid"
instance Has FlatList "accessibilityTraits"
instance Has FlatList "accessibilityViewIsModal"
instance Has FlatList "shouldRasterizeIOS"

-- TODO: methods
