{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE DeriveGeneric         #-}
{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings     #-}
module React.Flux.Rn.Components.ListView {-# DEPRECATED "Use FlatList or SectionList" #-} (
    module React.Flux.Rn.Components.ListView,
    module React.Flux.Rn.StyleProps.ViewStyleProps,
    module React.Flux.Rn.StyleProps.LayoutStyleProps,
    module React.Flux.Rn.StyleProps.ShadowStyleProps,
    module React.Flux.Rn.StyleProps.TransformsStyleProps
) where

import Data.Typeable                       (Typeable)
import GHC.Generics               (Generic)
import GHCJS.Marshal              (FromJSVal, ToJSVal (..))
import GHCJS.Types                (JSVal)
import Numeric.Natural                     (Natural)
import Prelude                             (Bool, IO, (.), fmap)
import React.Flux                          (ReactElementM, foreign_)
import React.Flux.Internal        (ReactViewRef (..))
import React.Flux.Rn.Events                (EventHandlerType, on1,
                                                      on2, view0, view1, view2,
                                                      view3, view4)
import React.Flux.Rn.Properties            (Has, Props, prop, props)
import React.Flux.Rn.StyleProps.LayoutStyleProps
import React.Flux.Rn.StyleProps.ShadowStyleProps hiding (ContentSize(..))
import React.Flux.Rn.StyleProps.TransformsStyleProps
import React.Flux.Rn.StyleProps.ViewStyleProps hiding (Visibility(..), borderBottomWidth, borderLeftWidth, borderRightWidth, borderTopWidth, borderWidth)


data ListView
listView :: [Props ListView handler] -> ReactElementM handler a -> ReactElementM handler a
listView = foreign_ "ListView" . fmap props


-- TODO:
newtype ListViewDataSourceRef = ListViewDataSourceRef JSVal
  deriving Generic
instance ToJSVal ListViewDataSourceRef


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

-- ListViewProps:

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



-- ViewStyleProps:

instance Has ListView "borderRightColor"
instance Has ListView "backfaceVisibility"
instance Has ListView "borderBottomColor"
instance Has ListView "borderBottomEndRadius"
instance Has ListView "borderBottomLeftRadius"
instance Has ListView "borderBottomRightRadius"
instance Has ListView "borderBottomStartRadius"
--instance Has ListView "borderBottomWidth"
instance Has ListView "borderColor"
instance Has ListView "borderEndColor"
--instance Has ListView "borderLeftWidth"
instance Has ListView "borderRadius"
instance Has ListView "backgroundColor"
--instance Has ListView "borderRightWidth"
instance Has ListView "borderStartColor"
instance Has ListView "borderStyle"
instance Has ListView "borderTopColor"
instance Has ListView "borderTopEndRadius"
instance Has ListView "borderTopLeftRadius"
instance Has ListView "borderTopRightRadius"
instance Has ListView "borderTopStartRadius"
--instance Has ListView "borderTopWidth"
--instance Has ListView "borderWidth"
instance Has ListView "opacity"
instance Has ListView "elevation"

-- LayoutStyleProps:

instance Has ListView "marginHorizontal"
instance Has ListView "alignContent"
instance Has ListView "alignSelf"
instance Has ListView "aspectRatio"
instance Has ListView "borderBottomWidth"
instance Has ListView "borderEndWidth"
instance Has ListView "borderLeftWidth"
instance Has ListView "borderRightWidth"
instance Has ListView "borderStartWidth"
instance Has ListView "borderTopWidth"
instance Has ListView "borderWidth"
instance Has ListView "bottom"
instance Has ListView "display"
instance Has ListView "end"
instance Has ListView "flex"
instance Has ListView "flexBasis"
instance Has ListView "flexDirection"
instance Has ListView "flexGrow"
instance Has ListView "flexShrink"
instance Has ListView "flexWrap"
instance Has ListView "height"
instance Has ListView "justifyContent"
instance Has ListView "left"
instance Has ListView "margin"
instance Has ListView "marginBottom"
instance Has ListView "marginEnd"
instance Has ListView "alignItems"
instance Has ListView "marginLeft"
instance Has ListView "marginRight"
instance Has ListView "marginStart"
instance Has ListView "marginTop"
instance Has ListView "marginVertical"
instance Has ListView "maxHeight"
instance Has ListView "maxWidth"
instance Has ListView "minHeight"
instance Has ListView "minWidth"
instance Has ListView "overflow"
instance Has ListView "padding"
instance Has ListView "paddingBottom"
instance Has ListView "paddingEnd"
instance Has ListView "paddingHorizontal"
instance Has ListView "paddingLeft"
instance Has ListView "paddingRight"
instance Has ListView "paddingStart"
instance Has ListView "paddingTop"
instance Has ListView "paddingVertical"
instance Has ListView "position"
instance Has ListView "right"
instance Has ListView "start"
instance Has ListView "top"
instance Has ListView "width"
instance Has ListView "zIndex"
instance Has ListView "direction"

-- ShadowStyleProps:

instance Has ListView "shadowColor"
instance Has ListView "shadowOffset"
instance Has ListView "shadowOpacity"
instance Has ListView "shadowRadius"

-- TransformsStyleProps:

instance Has ListView "transform"