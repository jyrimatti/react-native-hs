{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE DeriveGeneric         #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE RankNTypes            #-}
module React.Flux.Rn.Components.ViewPagerAndroid (
    module React.Flux.Rn.Components.ViewPagerAndroid,
    module React.Flux.Rn.Props.ViewProps,
    module React.Flux.Rn.Types.KeyboardDismissMode
) where

import Data.Aeson                 (FromJSON (..))
import GHC.Generics               (Generic)
import GHCJS.Marshal              (FromJSVal (..))
import GHCJS.Types                (JSString)
import Numeric.Natural               (Natural)
import Prelude                    (Show, fmap, (.), Int, Bool, Double, (<$>))
import React.Flux                    (ReactElementM, foreign_)
import React.Flux.Rn.Events       (fromNativeJSON, nativeEvent, EventHandlerType, on1)
import React.Flux.Rn.Properties      (Has, Props, prop, props)
import React.Flux.Rn.Props.ViewProps
import React.Flux.Rn.Types.KeyboardDismissMode (KeyboardDismissMode)



data ViewPagerAndroid
viewPagerAndroid :: [Props ViewPagerAndroid handler] -> ReactElementM handler a -> ReactElementM handler a
viewPagerAndroid = foreign_ "ViewPagerAndroid" . fmap props


newtype OnPageSelected = OnPageSelected {
    position :: Natural
} deriving (Show, Generic)
instance FromJSON OnPageSelected
instance FromJSVal OnPageSelected where fromJSVal = fromNativeJSON

data PageScrollingState = Idle | Dragging | Settling
  deriving (Show, Generic)
instance FromJSVal PageScrollingState where
  fromJSVal jsval = fmap parse <$> nativeEvent jsval
   where parse :: JSString -> PageScrollingState
         parse "idle"     = Idle
         parse "dragging" = Dragging
         parse "settling" = Settling

data OnPageScroll = OnPageScroll {
    position :: Natural,
    offset   :: Double
} deriving (Show, Generic)
instance FromJSON OnPageScroll
instance FromJSVal OnPageScroll where fromJSVal = fromNativeJSON


initialPage :: Has c "initialPage" => Natural -> Props c handler
initialPage = prop "initialPage"

keyboardDismissMode :: Has c "keyboardDismissMode" => KeyboardDismissMode -> Props c handler
keyboardDismissMode = prop "keyboardDismissMode"

onPageScroll :: Has c "onPageScroll" => (OnPageScroll -> EventHandlerType handler) -> Props c handler
onPageScroll = on1 "onPageScroll"

onPageScrollStateChanged :: Has c "onPageScrollStateChanged" => (PageScrollingState -> EventHandlerType handler) -> Props c handler
onPageScrollStateChanged = on1 "onPageScrollStateChanged"

onPageSelected :: Has c "onPageSelected" => (OnPageSelected -> EventHandlerType handler) -> Props c handler
onPageSelected = on1 "onPageSelected"

pageMargin :: Has c "pageMargin" => Int -> Props c handler
pageMargin = prop "pageMargin"

peekEnabled :: Has c "peekEnabled" => Bool -> Props c handler
peekEnabled = prop "peekEnabled"

scrollEnabled :: Has c "scrollEnabled" => Bool -> Props c handler
scrollEnabled = prop "scrollEnabled"



instance Has ViewPagerAndroid "initialPage"
instance Has ViewPagerAndroid "keyboardDismissMode"
instance Has ViewPagerAndroid "onPageScroll"
instance Has ViewPagerAndroid "onPageScrollStateChanged"
instance Has ViewPagerAndroid "onPageSelected"
instance Has ViewPagerAndroid "pageMargin"
instance Has ViewPagerAndroid "peekEnabled"
instance Has ViewPagerAndroid "scrollEnabled"

-- ViewProps:

instance Has ViewPagerAndroid "onStartShouldSetResponder"
instance Has ViewPagerAndroid "accessibilityLabel"
instance Has ViewPagerAndroid "hitSlop"
instance Has ViewPagerAndroid "nativeID"
instance Has ViewPagerAndroid "onAccessibilityTap"
instance Has ViewPagerAndroid "onLayout"
instance Has ViewPagerAndroid "onMagicTap"
instance Has ViewPagerAndroid "onMoveShouldSetResponder"
instance Has ViewPagerAndroid "onMoveShouldSetResponderCapture"
instance Has ViewPagerAndroid "onResponderGrant"
instance Has ViewPagerAndroid "onResponderMove"
instance Has ViewPagerAndroid "onResponderReject"
instance Has ViewPagerAndroid "onResponderRelease"
instance Has ViewPagerAndroid "onResponderTerminate"
instance Has ViewPagerAndroid "onResponderTerminationRequest"
instance Has ViewPagerAndroid "accessible"
instance Has ViewPagerAndroid "onStartShouldSetResponderCapture"
instance Has ViewPagerAndroid "pointerEvents"
instance Has ViewPagerAndroid "removeClippedSubviews"
instance Has ViewPagerAndroid "style"
instance Has ViewPagerAndroid "testID"
instance Has ViewPagerAndroid "accessibilityComponentType"
instance Has ViewPagerAndroid "accessibilityLiveRegion"
instance Has ViewPagerAndroid "collapsable"
instance Has ViewPagerAndroid "importantForAccessibility"
instance Has ViewPagerAndroid "needsOffscreenAlphaCompositing"
instance Has ViewPagerAndroid "renderToHardwareTextureAndroid"
instance Has ViewPagerAndroid "accessibilityTraits"
instance Has ViewPagerAndroid "accessibilityViewIsModal"
instance Has ViewPagerAndroid "shouldRasterizeIOS"

