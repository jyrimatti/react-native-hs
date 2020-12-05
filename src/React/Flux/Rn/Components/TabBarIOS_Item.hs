{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE DeriveGeneric         #-}
{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE RankNTypes            #-}
module React.Flux.Rn.Components.TabBarIOS_Item (
    module React.Flux.Rn.Components.TabBarIOS_Item,
    module React.Flux.Rn.Props.ViewProps,
    module React.Flux.Rn.Types.ImageSource,
    module React.Flux.Rn.Types.Color
) where

import GHC.Generics               (Generic)
import GHCJS.Marshal              (ToJSVal (..))
import Prelude                    (String, Show, fmap, (.), Bool, Either(..), Int)
import React.Flux                    (ReactElementM, foreign_)
import React.Flux.Rn.Events          (EventHandlerType, on0)
import React.Flux.Rn.Properties      (Has, Props, prop, props)
import React.Flux.Rn.Props.ViewProps hiding (AccessibilityTrait(..), OnLayoutVals(..))
import React.Flux.Rn.Types.Color
import React.Flux.Rn.Types.ImageSource

{-# ANN module ("HLint: ignore Use camelCase" :: String) #-}

data TabBarIOS_Item
tabBarIOS_Item :: [Props TabBarIOS_Item handler] -> ReactElementM handler a -> ReactElementM handler a
tabBarIOS_Item = foreign_ "TabBarIOS_Item" . fmap props

data TabBarSystemIcon = Bookmarks
                      | Contacts
                      | Downloads
                      | Favorites
                      | Featured
                      | History
                      | More
                      | MostRecent
                      | MostViewed
                      | Recents
                      | Search
                      | TopRated
  deriving (Show, Generic)
instance ToJSVal TabBarSystemIcon where
  toJSVal Bookmarks  = toJSVal ("bookmarks" :: String)
  toJSVal Contacts   = toJSVal ("contacts" :: String)
  toJSVal Downloads  = toJSVal ("downloads" :: String)
  toJSVal Favorites  = toJSVal ("favorites" :: String)
  toJSVal Featured   = toJSVal ("featured" :: String)
  toJSVal History    = toJSVal ("history" :: String)
  toJSVal More       = toJSVal ("more" :: String)
  toJSVal MostRecent = toJSVal ("most-recent" :: String)
  toJSVal MostViewed = toJSVal ("most-viewed" :: String)
  toJSVal Recents    = toJSVal ("recents" :: String)
  toJSVal Search     = toJSVal ("search" :: String)
  toJSVal TopRated   = toJSVal ("top-rated" :: String)


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

