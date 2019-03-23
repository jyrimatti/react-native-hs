{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE NoImplicitPrelude     #-}
{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE TypeApplications      #-}
module React.Flux.Rn.Components.ListView {-# DEPRECATED "Use FlatList or SectionList" #-} (
    module React.Flux.Rn.Components.ListView,
    ListViewDataSourceRef, ReactViewRef,
    ScrollViewProps.Color (..),
    ScrollViewProps.ContentInsetAdjustmentBehavior (..),
    ScrollViewProps.ContentOffset (ContentOffset),
    ScrollViewProps.DecelerationRate (..),
    ScrollViewProps.IndicatorStyle (..),
    ScrollViewProps.Inset (Inset),
    ScrollViewProps.KeyboardDismissMode (..),
    ScrollViewProps.KeyboardShouldPersistTaps (..),
    ScrollViewProps.OverScrollMode (..),
    ScrollViewProps.SnapToAlignment (..)
) where

import           Data.Typeable                       (Typeable)
import           GHCJS.Marshal                       (FromJSVal)
import           Numeric.Natural                     (Natural)
import           Prelude                             ((.))
import           Prelude                             (Bool, IO)
import           Prelude                             (fmap)
import           React.Flux                          (ReactElementM, foreign_)
import           React.Flux.Rn.Events                (EventHandlerType, on1,
                                                      on2, view0, view1, view2,
                                                      view3, view4)
import           React.Flux.Rn.Properties            (Has, Props, prop, props)
import qualified React.Flux.Rn.Props.ScrollViewProps as ScrollViewProps
import           React.Flux.Rn.Types                 (ListViewDataSourceRef,
                                                      ReactViewRef)



data ListView
listView :: [Props ListView handler] -> ReactElementM handler a -> ReactElementM handler a
listView = foreign_ "ListView" . fmap props



-- Required
dataSource :: Has c "dataSource" => ListViewDataSourceRef -> Props c handler
dataSource = prop "dataSource"

-- Required
initialListSize :: Has c "initialListSize" => Natural -> Props c handler
initialListSize = prop "initialListSize"

-- Required
onEndReachedThreshold :: Has c "onEndReachedThreshold" => (Natural -> EventHandlerType handler) -> Props c handler
onEndReachedThreshold = on1 "onEndReachedThreshold"

-- Required
pageSize :: Has c "pageSize" => Natural -> Props c handler
pageSize = prop "pageSize"

-- Required
renderRow :: (Has c "renderRow", Typeable props) => (rowdata -> sectionID -> rowID -> (sectionID -> rowID -> IO ()) -> ReactViewRef props) -> Props c handler
renderRow = view4 "renderRow"

-- Required
renderScrollComponent :: (Has c "renderScrollComponent", Typeable props) => ([Props c handler] -> ReactViewRef props) -> Props c handler
renderScrollComponent = view1 "renderScrollComponent"

-- Required
scrollRenderAheadDistance :: Has c "scrollRenderAheadDistance" => Natural -> Props c handler
scrollRenderAheadDistance = prop "scrollRenderAheadDistance"

enableEmptySections :: Has c "enableEmptySections" => Bool -> Props c handler
enableEmptySections = prop "enableEmptySections"

renderHeader ::  (Has c "renderHeader", Typeable props) => ReactViewRef props -> Props c handler
renderHeader = view0 "renderScrollComponent"

onEndReached :: (Has c "onEndReached", FromJSVal nativeScrollEvent) => (nativeScrollEvent -> EventHandlerType handler) -> Props c handler
onEndReached = on1 "onEndReached"

stickySectionHeadersEnabled :: Has c "stickySectionHeadersEnabled" => Bool -> Props c handler
stickySectionHeadersEnabled = prop "stickySectionHeadersEnabled"

renderSectionHeader :: (Has c "renderSectionHeader", Typeable props) => (sectionData -> sectionID -> ReactViewRef props) -> Props c handler
renderSectionHeader = view2 "renderSectionHeader"

renderSeparator ::  (Has c "renderSeparator", Typeable props) => (sectionId -> rowID -> Bool{-adjacentRowHighlighted-} -> ReactViewRef props) -> Props c handler
renderSeparator = view3 "renderSeparator"

onChangeVisibleRows :: (Has c "onChangeVisibleRows", FromJSVal visibleRows, FromJSVal changedRows) => (visibleRows -> changedRows -> EventHandlerType handler) -> Props c handler
onChangeVisibleRows = on2 "onChangeVisibleRows"

renderFooter :: (Has c "renderFooter", Typeable props) => ReactViewRef props -> Props c handler
renderFooter = view0 "renderFooter"



instance Has ListView "dataSource"
instance Has ListView "initialListSize"
instance Has ListView "onEndReachedThreshold"
instance Has ListView "pageSize"
instance Has ListView "renderRow"
instance Has ListView "renderScrollComponent"
instance Has ListView "scrollRenderAheadDistance"
instance Has ListView "enableEmptySections"
instance Has ListView "renderHeader"
instance Has ListView "onEndReached"
instance Has ListView "stickySectionHeadersEnabled"
instance Has ListView "renderSectionHeader"
instance Has ListView "renderSeparator"
instance Has ListView "onChangeVisibleRows"
instance Has ListView "renderFooter"

-- ScrollViewProps:

instance Has ListView "alwaysBounceVertical"
instance Has ListView "contentContainerStyle"
instance Has ListView "keyboardDismissMode"
instance Has ListView "keyboardShouldPersistTaps"
instance Has ListView "onContentSizeChange"
instance Has ListView "onMomentumScrollBegin"
instance Has ListView "onMomentumScrollEnd"
instance Has ListView "onScroll"
instance Has ListView "pagingEnabled"
instance Has ListView "refreshControl"
instance Has ListView "scrollEnabled"
instance Has ListView "showsHorizontalScrollIndicator"
instance Has ListView "showsVerticalScrollIndicator"
instance Has ListView "stickyHeaderIndices"
instance Has ListView "endFillColor"
instance Has ListView "overScrollMode"
instance Has ListView "scrollPerfTag"
instance Has ListView "alwaysBounceHorizontal"
instance Has ListView "horizontal"
instance Has ListView "automaticallyAdjustContentInsets"
instance Has ListView "bounces"
instance Has ListView "bouncesZoom"
instance Has ListView "canCancelContentTouches"
instance Has ListView "centerContent"
instance Has ListView "contentInset"
instance Has ListView "contentInsetAdjustmentBehavior"
instance Has ListView "contentOffset"
instance Has ListView "decelerationRate"
instance Has ListView "directionalLockEnabled"
instance Has ListView "indicatorStyle"
instance Has ListView "maximumZoomScale"
instance Has ListView "minimumZoomScale"
instance Has ListView "pinchGestureEnabled"
instance Has ListView "scrollEventThrottle"
instance Has ListView "scrollIndicatorInsets"
instance Has ListView "scrollsToTop"
instance Has ListView "snapToAlignment"
instance Has ListView "snapToInterval"
instance Has ListView "zoomScale"

-- TODO: methods
