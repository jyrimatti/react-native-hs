{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE NoImplicitPrelude     #-}
{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE RankNTypes            #-}
{-# LANGUAGE TypeApplications      #-}
module React.Flux.Rn.Components.SectionList (
    module React.Flux.Rn.Components.SectionList,
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
import           Prelude                                  (Bool, String)
import           Prelude                                  ((.))
import           Prelude                                  (fmap)
import           React.Flux                               (ReactElementM,
                                                           foreign_)
import           React.Flux.Rn.Properties                 (Has, Props, prop,
                                                           props)
import qualified React.Flux.Rn.Props.ScrollViewProps      as ScrollViewProps
import qualified React.Flux.Rn.Props.ViewProps            as ViewProps
import qualified React.Flux.Rn.Props.VirtualizedListProps as VirtualizedListProps
import           React.Flux.Rn.Types                      (Index)



data SectionList
sectionList :: [Props SectionList handler] -> ReactElementM handler a -> ReactElementM handler a
sectionList = foreign_ "SectionList" . fmap props



-- Platform: IOS
stickySectionHeadersEnabled :: Has c "stickySectionHeadersEnabled" => Bool -> Props c handler
stickySectionHeadersEnabled = prop "stickySectionHeadersEnabled"



instance Has SectionList "stickySectionHeadersEnabled"

-- VirtualizedListProps:

instance Has SectionList "last"
instance Has SectionList "first"
--instance Has SectionList "horizontal"
instance Has SectionList "initialNumToRender"
instance Has SectionList "keyExtractor"
instance Has SectionList "disableVirtualization"
instance Has SectionList "maxToRenderPerBatch"
instance Has SectionList "onEndReachedThreshold"
--instance Has SectionList "scrollEventThrottle"
instance Has SectionList "updateCellsBatchingPeriod"
instance Has SectionList "windowSize"

-- ScrollViewProps:

instance Has SectionList "alwaysBounceVertical"
instance Has SectionList "contentContainerStyle"
instance Has SectionList "keyboardDismissMode"
instance Has SectionList "keyboardShouldPersistTaps"
instance Has SectionList "onContentSizeChange"
instance Has SectionList "onMomentumScrollBegin"
instance Has SectionList "onMomentumScrollEnd"
instance Has SectionList "onScroll"
instance Has SectionList "pagingEnabled"
instance Has SectionList "refreshControl"
instance Has SectionList "scrollEnabled"
instance Has SectionList "showsHorizontalScrollIndicator"
instance Has SectionList "showsVerticalScrollIndicator"
instance Has SectionList "stickyHeaderIndices"
instance Has SectionList "endFillColor"
instance Has SectionList "overScrollMode"
instance Has SectionList "scrollPerfTag"
instance Has SectionList "alwaysBounceHorizontal"
instance Has SectionList "horizontal"
instance Has SectionList "automaticallyAdjustContentInsets"
instance Has SectionList "bounces"
instance Has SectionList "bouncesZoom"
instance Has SectionList "canCancelContentTouches"
instance Has SectionList "centerContent"
instance Has SectionList "contentInset"
instance Has SectionList "contentInsetAdjustmentBehavior"
instance Has SectionList "contentOffset"
instance Has SectionList "decelerationRate"
instance Has SectionList "directionalLockEnabled"
instance Has SectionList "indicatorStyle"
instance Has SectionList "maximumZoomScale"
instance Has SectionList "minimumZoomScale"
instance Has SectionList "pinchGestureEnabled"
instance Has SectionList "scrollEventThrottle"
instance Has SectionList "scrollIndicatorInsets"
instance Has SectionList "scrollsToTop"
instance Has SectionList "snapToAlignment"
instance Has SectionList "snapToInterval"
instance Has SectionList "zoomScale"


-- ViewProps:

instance Has SectionList "onStartShouldSetResponder"
instance Has SectionList "accessibilityLabel"
instance Has SectionList "hitSlop"
instance Has SectionList "nativeID"
instance Has SectionList "onAccessibilityTap"
instance Has SectionList "onLayout"
instance Has SectionList "onMagicTap"
instance Has SectionList "onMoveShouldSetResponder"
instance Has SectionList "onMoveShouldSetResponderCapture"
instance Has SectionList "onResponderGrant"
instance Has SectionList "onResponderMove"
instance Has SectionList "onResponderReject"
instance Has SectionList "onResponderRelease"
instance Has SectionList "onResponderTerminate"
instance Has SectionList "onResponderTerminationRequest"
instance Has SectionList "accessible"
instance Has SectionList "onStartShouldSetResponderCapture"
instance Has SectionList "pointerEvents"
instance Has SectionList "removeClippedSubviews"
instance Has SectionList "style"
instance Has SectionList "testID"
instance Has SectionList "accessibilityComponentType"
instance Has SectionList "accessibilityLiveRegion"
instance Has SectionList "collapsable"
instance Has SectionList "importantForAccessibility"
instance Has SectionList "needsOffscreenAlphaCompositing"
instance Has SectionList "renderToHardwareTextureAndroid"
instance Has SectionList "accessibilityTraits"
instance Has SectionList "accessibilityViewIsModal"
instance Has SectionList "shouldRasterizeIOS"

-- TODO: methods
