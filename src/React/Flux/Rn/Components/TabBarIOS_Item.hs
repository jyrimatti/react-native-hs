{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE NoImplicitPrelude     #-}
{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE RankNTypes            #-}
{-# LANGUAGE TypeApplications      #-}
module React.Flux.Rn.Components.TabBarIOS_Item (
    module React.Flux.Rn.Components.TabBarIOS_Item,
    Color(..), ImageSource(..),
    TabBarSystemIcon(..),
    ViewProps.AccessibilityComponentTypes(..),
    ViewProps.AccessibilityLiveRegion(..),
    ViewProps.AccessibilityTraits(..),
    ViewProps.ImportantForAccessibility(..),
    ViewProps.Inset(Inset),
    ViewProps.OnLayout(OnLayout),
    ViewProps.PointerEvents(..),
    ViewProps.SyntheticTouchEvent(SyntheticTouchEvent)
) where

import           Prelude                       (Bool, Either (..), Int, String)
import           Prelude                       (fmap)
import           Prelude                       ((.))
import           React.Flux                    (ReactElementM, foreign_)
import           React.Flux.Rn.Events          (EventHandlerType, on0)
import           React.Flux.Rn.Properties      (Has, Props, prop, props)
import qualified React.Flux.Rn.Props.ViewProps as ViewProps
import           React.Flux.Rn.Types           (Color (..), ImageSource (..),
                                                TabBarSystemIcon (..))

{-# ANN module ("HLint: ignore Use camelCase" :: String) #-}



data TabBarIOS_Item
tabBarIOS_Item :: [Props TabBarIOS_Item handler] -> ReactElementM handler a -> ReactElementM handler a
tabBarIOS_Item = foreign_ "TabBarIOS_Item" . fmap props



selected :: Has c "selected" => Bool -> Props c handler
selected = prop "selected"

badge :: Has c "badge" => Either String Int -> Props c handler
badge (Left x)  = prop "badge" x
badge (Right x) = prop "badge" x

icon :: Has c "icon" => ImageSource -> Props c handler
icon = prop "icon"

onPress :: Has c "onPress" => EventHandlerType handler -> Props c handler
onPress = on0 "onPress"

renderAsOriginal :: Has c "renderAsOriginal" => Bool -> Props c handler
renderAsOriginal = prop "renderAsOriginal"

badgeColor :: Has c "badgeColor" => Color -> Props c handler
badgeColor = prop "badgeColor"

selectedIcon :: Has c "selectedIcon" => ImageSource -> Props c handler
selectedIcon = prop "selectedIcon"

systemIcon :: Has c "systemIcon" => TabBarSystemIcon -> Props c handler
systemIcon = prop "systemIcon"

title :: Has c "title" => String -> Props c handler
title = prop "title"

-- Platform: IOS
isTVSelectable :: Has c "isTVSelectable" => Bool -> Props c handler
isTVSelectable = prop "isTVSelectable"



instance Has TabBarIOS_Item "selected"
instance Has TabBarIOS_Item "badge"
instance Has TabBarIOS_Item "icon"
instance Has TabBarIOS_Item "onPress"
instance Has TabBarIOS_Item "renderAsOriginal"
instance Has TabBarIOS_Item "badgeColor"
instance Has TabBarIOS_Item "selectedIcon"
instance Has TabBarIOS_Item "systemIcon"
instance Has TabBarIOS_Item "title"
instance Has TabBarIOS_Item "isTVSelectable"

-- ViewProps:

instance Has TabBarIOS_Item "onStartShouldSetResponder"
instance Has TabBarIOS_Item "accessibilityLabel"
instance Has TabBarIOS_Item "hitSlop"
instance Has TabBarIOS_Item "nativeID"
instance Has TabBarIOS_Item "onAccessibilityTap"
instance Has TabBarIOS_Item "onLayout"
instance Has TabBarIOS_Item "onMagicTap"
instance Has TabBarIOS_Item "onMoveShouldSetResponder"
instance Has TabBarIOS_Item "onMoveShouldSetResponderCapture"
instance Has TabBarIOS_Item "onResponderGrant"
instance Has TabBarIOS_Item "onResponderMove"
instance Has TabBarIOS_Item "onResponderReject"
instance Has TabBarIOS_Item "onResponderRelease"
instance Has TabBarIOS_Item "onResponderTerminate"
instance Has TabBarIOS_Item "onResponderTerminationRequest"
instance Has TabBarIOS_Item "accessible"
instance Has TabBarIOS_Item "onStartShouldSetResponderCapture"
instance Has TabBarIOS_Item "pointerEvents"
instance Has TabBarIOS_Item "removeClippedSubviews"
instance Has TabBarIOS_Item "style"
instance Has TabBarIOS_Item "testID"
instance Has TabBarIOS_Item "accessibilityComponentType"
instance Has TabBarIOS_Item "accessibilityLiveRegion"
instance Has TabBarIOS_Item "collapsable"
instance Has TabBarIOS_Item "importantForAccessibility"
instance Has TabBarIOS_Item "needsOffscreenAlphaCompositing"
instance Has TabBarIOS_Item "renderToHardwareTextureAndroid"
instance Has TabBarIOS_Item "accessibilityTraits"
instance Has TabBarIOS_Item "accessibilityViewIsModal"
instance Has TabBarIOS_Item "shouldRasterizeIOS"

