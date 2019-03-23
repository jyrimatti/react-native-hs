{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE NoImplicitPrelude     #-}
{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE RankNTypes            #-}
{-# LANGUAGE TypeApplications      #-}
module React.Flux.Rn.Components.ViewPagerAndroid (
    module React.Flux.Rn.Components.ViewPagerAndroid,
    KeyboardDismissMode(..), OnPageScroll(OnPageScroll), OnPageSelected(OnPageSelected), PageScrollingState(..),
    ViewProps.AccessibilityComponentTypes(..),
    ViewProps.AccessibilityLiveRegion(..),
    ViewProps.AccessibilityTraits(..),
    ViewProps.ImportantForAccessibility(..),
    ViewProps.Inset(Inset),
    ViewProps.OnLayout(OnLayout),
    ViewProps.PointerEvents(..),
    ViewProps.SyntheticTouchEvent(SyntheticTouchEvent)
) where

import           Numeric.Natural               (Natural)
import           Prelude                       (Bool, Int)
import           Prelude                       (fmap)
import           Prelude                       ((.))
import           React.Flux                    (ReactElementM, foreign_)
import           React.Flux.Rn.Events          (EventHandlerType, on1)
import           React.Flux.Rn.Properties      (Has, Props, prop, props)
import qualified React.Flux.Rn.Props.ViewProps as ViewProps
import           React.Flux.Rn.Types           (KeyboardDismissMode (..),
                                                OnPageScroll (OnPageScroll),
                                                OnPageSelected (OnPageSelected),
                                                PageScrollingState (..))



data ViewPagerAndroid
viewPagerAndroid :: [Props ViewPagerAndroid handler] -> ReactElementM handler a -> ReactElementM handler a
viewPagerAndroid = foreign_ "ViewPagerAndroid" . fmap props



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

