{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE DeriveGeneric      #-}
module React.Flux.Rn.Components.RefreshControl (
    module React.Flux.Rn.Components.RefreshControl,
    module React.Flux.Rn.Props.CommonProps,
    module React.Flux.Rn.Props.ViewProps
) where

import Data.List.NonEmpty              (NonEmpty)
import GHC.Generics               (Generic)
import GHCJS.Marshal              (ToJSVal (..))
import Numeric.Natural                 (Natural)
import Prelude                    (Show, Int, Bool, String, fmap, (.))
import React.Flux                      (ReactElementM, foreign_)
import React.Flux.Rn.Events            (EventHandlerType, on0)

import React.Flux.Rn.Properties        (Has, Props, prop, props)
import React.Flux.Rn.Props.CommonProps (tintColor, Color(..))
import React.Flux.Rn.Props.ViewProps



data RefreshControl
refreshControl :: [Props RefreshControl handler] -> ReactElementM handler a -> ReactElementM handler a
refreshControl = foreign_ "RefreshControl" . fmap props


data RefreshControlSize = Default | Large
  deriving (Show, Generic)
instance ToJSVal RefreshControlSize where
  toJSVal Default = toJSVal (1 :: Int)
  toJSVal Large   = toJSVal (0 :: Int)


-- Required
refreshing :: Has c "refreshing" => Bool -> Props c handler
refreshing = prop "refreshing"

onRefresh :: Has c "onRefresh" => EventHandlerType handler -> Props c handler
onRefresh = on0 "onRefresh"

-- Platform: Android
colors :: Has c "colors" => NonEmpty Color -> Props c handler
colors = prop "colors"

-- Platform: Android
enabled :: Has c "enabled" => Bool -> Props c handler
enabled = prop "enabled"

-- Platform: Android
progressBackgroundColor :: Has c "progressBackgroundColor" => Color -> Props c handler
progressBackgroundColor = prop "progressBackgroundColor"

-- Platform: Android
progressViewOffset :: Has c "progressViewOffset" => Natural -> Props c handler
progressViewOffset = prop "progressViewOffset"

-- Platform: Android
size :: Has c "size" => RefreshControlSize -> Props c handler
size = prop "size"

-- Platform: IOS
--tintColor :: Has c "tintColor" => Color -> Props c handler
--tintColor = prop "tintColor"

-- Platform: IOS
title :: Has c "title" => String -> Props c handler
title = prop "title"

-- Platform: IOS
titleColor :: Has c "titleColor" => Color -> Props c handler
titleColor = prop "titleColor"



instance Has RefreshControl "refreshing"
instance Has RefreshControl "onRefresh"
instance Has RefreshControl "colors"
instance Has RefreshControl "enabled"
instance Has RefreshControl "progressBackgroundColor"
instance Has RefreshControl "progressViewOffset"
instance Has RefreshControl "size"
instance Has RefreshControl "tintColor"
instance Has RefreshControl "title"
instance Has RefreshControl "titleColor"

-- ViewProps:

instance Has RefreshControl "onStartShouldSetResponder"
instance Has RefreshControl "accessibilityLabel"
instance Has RefreshControl "hitSlop"
instance Has RefreshControl "nativeID"
instance Has RefreshControl "onAccessibilityTap"
instance Has RefreshControl "onLayout"
instance Has RefreshControl "onMagicTap"
instance Has RefreshControl "onMoveShouldSetResponder"
instance Has RefreshControl "onMoveShouldSetResponderCapture"
instance Has RefreshControl "onResponderGrant"
instance Has RefreshControl "onResponderMove"
instance Has RefreshControl "onResponderReject"
instance Has RefreshControl "onResponderRelease"
instance Has RefreshControl "onResponderTerminate"
instance Has RefreshControl "onResponderTerminationRequest"
instance Has RefreshControl "accessible"
instance Has RefreshControl "onStartShouldSetResponderCapture"
instance Has RefreshControl "pointerEvents"
instance Has RefreshControl "removeClippedSubviews"
instance Has RefreshControl "style"
instance Has RefreshControl "testID"
instance Has RefreshControl "accessibilityComponentType"
instance Has RefreshControl "accessibilityLiveRegion"
instance Has RefreshControl "collapsable"
instance Has RefreshControl "importantForAccessibility"
instance Has RefreshControl "needsOffscreenAlphaCompositing"
instance Has RefreshControl "renderToHardwareTextureAndroid"
instance Has RefreshControl "accessibilityTraits"
instance Has RefreshControl "accessibilityViewIsModal"
instance Has RefreshControl "shouldRasterizeIOS"

