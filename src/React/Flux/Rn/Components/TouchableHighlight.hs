{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE RankNTypes            #-}
module React.Flux.Rn.Components.TouchableHighlight (
    module React.Flux.Rn.Components.TouchableHighlight,
    module React.Flux.Rn.Props.TouchableWithoutFeedbackProps,
    module React.Flux.Rn.Types,
    module React.Flux.Rn.Props.CommonProps,
    module React.Flux.Rn.Types.Color,
    module React.Flux.Rn.Types.TvParallaxProperties
) where

import Prelude                                           (Bool, (.), fmap)
import React.Flux                                        (ReactElementM, foreign_)
import React.Flux.Rn.Events                              (EventHandlerType, on0)
import React.Flux.Rn.Properties                          (Has, Props, prop, props)
import React.Flux.Rn.Props.CommonProps (style)
import React.Flux.Rn.Props.TouchableWithoutFeedbackProps
import React.Flux.Rn.Types (UnitInterval)
import React.Flux.Rn.Types.Color
import React.Flux.Rn.Types.TvParallaxProperties



data TouchableHighlight
touchableHighlight :: [Props TouchableHighlight handler] -> ReactElementM handler a -> ReactElementM handler a
touchableHighlight = foreign_ "TouchableHighlight" . fmap props



activeOpacity :: Has c "activeOpacity" => UnitInterval -> Props c handler
activeOpacity = prop "activeOpacity"

onHideUnderlay :: Has c "onHideUnderlay" => EventHandlerType handler -> Props c handler
onHideUnderlay = on0 "onHideUnderlay"

onShowUnderlay :: Has c "onShowUnderlay" => EventHandlerType handler -> Props c handler
onShowUnderlay = on0 "onShowUnderlay"

--style :: Has c "style" => [Styles View handler] -> Props c handler
--style = nestedProp "style"

underlayColor :: Has c "underlayColor" => Color -> Props c handler
underlayColor = prop "underlayColor"

-- Platform: IOS
hasTVPreferredFocus :: Has c "hasTVPreferredFocus" => Bool -> Props c handler
hasTVPreferredFocus = prop "hasTVPreferredFocus"

-- Platform: IOS
tvParallaxProperties :: Has c "tvParallaxProperties" => TvParallaxProperties -> Props c handler
tvParallaxProperties = prop "tvParallaxProperties"



instance Has TouchableHighlight "activeOpacity"
instance Has TouchableHighlight "onHideUnderlay"
instance Has TouchableHighlight "onShowUnderlay"
instance Has TouchableHighlight "style"
instance Has TouchableHighlight "underlayColor"
instance Has TouchableHighlight "hasTVPreferredFocus"
instance Has TouchableHighlight "tvParallaxProperties"

-- TouchableWithoutFeedbackProps:

instance Has TouchableHighlight "hitSlop"
instance Has TouchableHighlight "accessibilityComponentType"
instance Has TouchableHighlight "accessible"
instance Has TouchableHighlight "delayLongPress"
instance Has TouchableHighlight "delayPressIn"
instance Has TouchableHighlight "delayPressOut"
instance Has TouchableHighlight "disabled"
instance Has TouchableHighlight "accessibilityTraits"
instance Has TouchableHighlight "onLayout"
instance Has TouchableHighlight "onLongPress"
instance Has TouchableHighlight "onPress"
instance Has TouchableHighlight "onPressIn"
instance Has TouchableHighlight "onPressOut"
instance Has TouchableHighlight "pressRetentionOffset"
