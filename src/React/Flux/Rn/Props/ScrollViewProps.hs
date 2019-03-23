{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE NoImplicitPrelude     #-}
{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE RankNTypes            #-}
module React.Flux.Rn.Props.ScrollViewProps (
    module React.Flux.Rn.Props.ScrollViewProps,
    Color (..),
    ContentInsetAdjustmentBehavior (..),
    ContentOffset (ContentOffset), DecelerationRate (..),
    IndicatorStyle (..), Inset (Inset),
    KeyboardDismissMode (..),
    KeyboardShouldPersistTaps (..),
    OverScrollMode (..), ReactViewRef,
    SnapToAlignment (..)
) where

import           Data.Typeable                 (Typeable)
import           Numeric.Natural               (Natural)
import           Prelude                       (Bool, Double, String)
import           React.Flux.Rn.Components.View (View)
import           React.Flux.Rn.Events          (EventHandlerType, on0, on2,
                                                view0)
import           React.Flux.Rn.Properties      (Has, Props, Styles, nestedProp,
                                                prop)
import           React.Flux.Rn.Types           (Color (..), ContentInsetAdjustmentBehavior (..),
                                                ContentOffset (ContentOffset),
                                                DecelerationRate (..),
                                                IndicatorStyle (..),
                                                Inset (Inset),
                                                KeyboardDismissMode (..),
                                                KeyboardShouldPersistTaps (..),
                                                OverScrollMode (..),
                                                ReactViewRef,
                                                SnapToAlignment (..))

-- Platform: IOS
alwaysBounceVertical :: Has component "alwaysBounceVertical" => Bool -> Props component handler
alwaysBounceVertical = prop "alwaysBounceVertical"

contentContainerStyle :: forall component handler. Has component "contentContainerStyle" => [Styles View handler] -> Props component handler
contentContainerStyle = nestedProp "contentContainerStyle"

keyboardDismissMode :: Has component "keyboardDismissMode" => KeyboardDismissMode -> Props component handler
keyboardDismissMode = prop "keyboardDismissMode"

keyboardShouldPersistTaps :: Has component "keyboardShouldPersistTaps" => KeyboardShouldPersistTaps -> Props component handler
keyboardShouldPersistTaps = prop "keyboardShouldPersistTaps"

onContentSizeChange :: forall component handler. Has component "onContentSizeChange" => (Natural -> Natural -> EventHandlerType handler) -> Props component handler
onContentSizeChange = on2 "onContentSizeChange"

onMomentumScrollBegin :: forall component handler. Has component "onMomentumScrollBegin" => EventHandlerType handler -> Props component handler
onMomentumScrollBegin = on0 "onMomentumScrollBegin"

onMomentumScrollEnd :: forall component handler. Has component "onMomentumScrollEnd" => EventHandlerType handler -> Props component handler
onMomentumScrollEnd = on0 "onMomentumScrollEnd"

onScroll :: forall component handler. Has component "onScroll" => EventHandlerType handler -> Props component handler
onScroll = on0 "onScroll"

pagingEnabled :: Has component "pagingEnabled" => Bool -> Props component handler
pagingEnabled = prop "pagingEnabled"

refreshControl :: (Typeable props, Has component "refreshControl") => ReactViewRef props -> Props component handler
refreshControl = view0 "refreshControl"

scrollEnabled :: Has component "scrollEnabled" => Bool -> Props component handler
scrollEnabled = prop "scrollEnabled"

showsHorizontalScrollIndicator :: Has component "showsHorizontalScrollIndicator" => Bool -> Props component handler
showsHorizontalScrollIndicator = prop "showsHorizontalScrollIndicator"

showsVerticalScrollIndicator :: Has component "showsVerticalScrollIndicator" => Bool -> Props component handler
showsVerticalScrollIndicator = prop "showsVerticalScrollIndicator"

stickyHeaderIndices :: Has component "stickyHeaderIndices" => [Natural] -> Props component handler
stickyHeaderIndices = prop "stickyHeaderIndices"

-- Platform: Android
endFillColor :: Has component "endFillColor" => Color -> Props component handler
endFillColor = prop "endFillColor"

-- Platform: Android
overScrollMode :: Has component "overScrollMode" => OverScrollMode -> Props component handler
overScrollMode = prop "overScrollMode"

-- Platform: Android
scrollPerfTag :: Has component "scrollPerfTag" => String -> Props component handler
scrollPerfTag = prop "scrollPerfTag"

-- Platform: IOS
alwaysBounceHorizontal :: Has component "alwaysBounceHorizontal" => Bool -> Props component handler
alwaysBounceHorizontal = prop "alwaysBounceHorizontal"

horizontal :: Has component "horizontal" => Bool -> Props component handler
horizontal = prop "horizontal"

-- Platform: IOS
automaticallyAdjustContentInsets :: Has component "automaticallyAdjustContentInsets" => Bool -> Props component handler
automaticallyAdjustContentInsets = prop "automaticallyAdjustContentInsets"

-- Platform: IOS
bounces :: Has component "bounces" => Bool -> Props component handler
bounces = prop "bounces"

-- Platform: IOS
bouncesZoom :: Has component "bouncesZoom" => Bool -> Props component handler
bouncesZoom = prop "bouncesZoom"

-- Platform: IOS
canCancelContentTouches :: Has component "canCancelContentTouches" => Bool -> Props component handler
canCancelContentTouches = prop "canCancelContentTouches"

-- Platform: IOS
centerContent :: Has component "centerContent" => Bool -> Props component handler
centerContent = prop "centerContent"

-- Platform: IOS
contentInset :: Has component "contentInset" => Inset -> Props component handler
contentInset = prop "contentInset"

-- Platform: IOS
contentInsetAdjustmentBehavior :: Has component "contentInsetAdjustmentBehavior" => ContentInsetAdjustmentBehavior -> Props component handler
contentInsetAdjustmentBehavior = prop "contentInsetAdjustmentBehavior"

-- Platform: IOS
contentOffset :: Has component "contentOffset" => ContentOffset -> Props component handler
contentOffset = prop "contentOffset"

-- Platform: IOS
decelerationRate :: Has component "decelerationRate" => DecelerationRate -> Props component handler
decelerationRate = prop "decelerationRate"

-- Platform: IOS
directionalLockEnabled :: Has component "directionalLockEnabled" => Bool -> Props component handler
directionalLockEnabled = prop "directionalLockEnabled"

-- Platform: IOS
indicatorStyle :: Has component "indicatorStyle" => IndicatorStyle -> Props component handler
indicatorStyle = prop "indicatorStyle"

-- Platform: IOS
maximumZoomScale :: Has component "maximumZoomScale" => Double -> Props component handler
maximumZoomScale = prop "maximumZoomScale"

-- Platform: IOS
minimumZoomScale :: Has component "minimumZoomScale" => Double -> Props component handler
minimumZoomScale = prop "minimumZoomScale"

-- Platform: IOS
pinchGestureEnabled :: Has component "pinchGestureEnabled" => Bool -> Props component handler
pinchGestureEnabled = prop "pinchGestureEnabled"

-- Platform: IOS
scrollEventThrottle :: Has component "scrollEventThrottle" => Natural -> Props component handler
scrollEventThrottle = prop "scrollEventThrottle"

-- Platform: IOS
scrollIndicatorInsets :: Has component "scrollIndicatorInsets" => Inset -> Props component handler
scrollIndicatorInsets = prop "scrollIndicatorInsets"

-- Platform: IOS
scrollsToTop :: Has component "scrollsToTop" => Bool -> Props component handler
scrollsToTop = prop "scrollsToTop"

-- Platform: IOS
snapToAlignment :: Has component "snapToAlignment" => SnapToAlignment -> Props component handler
snapToAlignment = prop "snapToAlignment"

-- Platform: IOS
snapToInterval :: Has component "snapToInterval" => Natural -> Props component handler
snapToInterval = prop "snapToInterval"

-- Platform: IOS
zoomScale :: Has component "zoomScale" => Double -> Props component handler
zoomScale = prop "zoomScale"

{-
instance Has c "alwaysBounceVertical"
instance Has c "contentContainerStyle"
instance Has c "keyboardDismissMode"
instance Has c "keyboardShouldPersistTaps"
instance Has c "onContentSizeChange"
instance Has c "onMomentumScrollBegin"
instance Has c "onMomentumScrollEnd"
instance Has c "onScroll"
instance Has c "pagingEnabled"
instance Has c "refreshControl"
instance Has c "scrollEnabled"
instance Has c "showsHorizontalScrollIndicator"
instance Has c "showsVerticalScrollIndicator"
instance Has c "stickyHeaderIndices"
instance Has c "endFillColor"
instance Has c "overScrollMode"
instance Has c "scrollPerfTag"
instance Has c "alwaysBounceHorizontal"
instance Has c "horizontal"
instance Has c "automaticallyAdjustContentInsets"
instance Has c "bounces"
instance Has c "bouncesZoom"
instance Has c "canCancelContentTouches"
instance Has c "centerContent"
instance Has c "contentInset"
instance Has c "contentInsetAdjustmentBehavior"
instance Has c "contentOffset"
instance Has c "decelerationRate"
instance Has c "directionalLockEnabled"
instance Has c "indicatorStyle"
instance Has c "maximumZoomScale"
instance Has c "minimumZoomScale"
instance Has c "pinchGestureEnabled"
instance Has c "scrollEventThrottle"
instance Has c "scrollIndicatorInsets"
instance Has c "scrollsToTop"
instance Has c "snapToAlignment"
instance Has c "snapToInterval"
instance Has c "zoomScale"
-}
