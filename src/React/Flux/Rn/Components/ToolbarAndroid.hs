{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE RankNTypes            #-}
module React.Flux.Rn.Components.ToolbarAndroid (
    module React.Flux.Rn.Components.ToolbarAndroid,
    module React.Flux.Rn.Types.ImageSource,
    module React.Flux.Rn.Types.Action,
    module React.Flux.Rn.Props.ViewProps
) where

import Numeric.Natural                 (Natural)
import Prelude                    (Int, fmap, (.), Bool, String)
import React.Flux                      (ReactElementM, foreign_)
import React.Flux.Rn.Events            (EventHandlerType, on0, on1)
import React.Flux.Rn.Properties        (Has, Props, prop, props)
import React.Flux.Rn.Props.CommonProps
import React.Flux.Rn.Props.ViewProps hiding (OnLayoutVals(..))
import React.Flux.Rn.Types.Action hiding (title)
import React.Flux.Rn.Types.ImageSource


data ToolbarAndroid
toolbarAndroid :: [Props ToolbarAndroid handler] -> ReactElementM handler a -> ReactElementM handler a
toolbarAndroid = foreign_ "ToolbarAndroid" . fmap props

overflowIcon :: Has c "overflowIcon" => ImageSource -> Props c handler
overflowIcon = prop "overflowIcon"

actions :: Has c "actions" => [Action] -> Props c handler
actions = prop "actions"

contentInsetStart :: Has c "contentInsetStart" => Int -> Props c handler
contentInsetStart = prop "contentInsetStart"

logo :: Has c "logo" => ImageSource -> Props c handler
logo = prop "logo"

navIcon :: Has c "navIcon" => ImageSource -> Props c handler
navIcon = prop "navIcon"

onActionSelected :: Has c "onActionSelected" => (Natural -> EventHandlerType handler) -> Props c handler
onActionSelected = on1 "onActionSelected"

onIconClicked :: Has c "onIconClicked" => EventHandlerType handler -> Props c handler
onIconClicked = on0 "onIconClicked"

contentInsetEnd :: Has c "contentInsetEnd" => Int -> Props c handler
contentInsetEnd = prop "contentInsetEnd"

rtl :: Has c "rtl" => Bool -> Props c handler
rtl = prop "rtl"

subtitle :: Has c "subtitle" => String -> Props c handler
subtitle = prop "subtitle"

subtitleColor :: Has c "subtitleColor" => Color -> Props c handler
subtitleColor = prop "subtitleColor"

title :: Has c "title" => String -> Props c handler
title = prop "title"

titleColor :: Has c "titleColor" => Color -> Props c handler
titleColor = prop "titleColor"



instance Has ToolbarAndroid "overflowIcon"
instance Has ToolbarAndroid "actions"
instance Has ToolbarAndroid "contentInsetStart"
instance Has ToolbarAndroid "logo"
instance Has ToolbarAndroid "navIcon"
instance Has ToolbarAndroid "onActionSelected"
instance Has ToolbarAndroid "onIconClicked"
instance Has ToolbarAndroid "contentInsetEnd"
instance Has ToolbarAndroid "rtl"
instance Has ToolbarAndroid "subtitle"
instance Has ToolbarAndroid "subtitleColor"
instance Has ToolbarAndroid "title"
instance Has ToolbarAndroid "titleColor"

-- ViewProps:

instance Has ToolbarAndroid "onStartShouldSetResponder"
instance Has ToolbarAndroid "accessibilityLabel"
instance Has ToolbarAndroid "hitSlop"
instance Has ToolbarAndroid "nativeID"
instance Has ToolbarAndroid "onAccessibilityTap"
instance Has ToolbarAndroid "onLayout"
instance Has ToolbarAndroid "onMagicTap"
instance Has ToolbarAndroid "onMoveShouldSetResponder"
instance Has ToolbarAndroid "onMoveShouldSetResponderCapture"
instance Has ToolbarAndroid "onResponderGrant"
instance Has ToolbarAndroid "onResponderMove"
instance Has ToolbarAndroid "onResponderReject"
instance Has ToolbarAndroid "onResponderRelease"
instance Has ToolbarAndroid "onResponderTerminate"
instance Has ToolbarAndroid "onResponderTerminationRequest"
instance Has ToolbarAndroid "accessible"
instance Has ToolbarAndroid "onStartShouldSetResponderCapture"
instance Has ToolbarAndroid "pointerEvents"
instance Has ToolbarAndroid "removeClippedSubviews"
instance Has ToolbarAndroid "style"
instance Has ToolbarAndroid "testID"
instance Has ToolbarAndroid "accessibilityComponentType"
instance Has ToolbarAndroid "accessibilityLiveRegion"
instance Has ToolbarAndroid "collapsable"
instance Has ToolbarAndroid "importantForAccessibility"
instance Has ToolbarAndroid "needsOffscreenAlphaCompositing"
instance Has ToolbarAndroid "renderToHardwareTextureAndroid"
instance Has ToolbarAndroid "accessibilityTraits"
instance Has ToolbarAndroid "accessibilityViewIsModal"
instance Has ToolbarAndroid "shouldRasterizeIOS"

