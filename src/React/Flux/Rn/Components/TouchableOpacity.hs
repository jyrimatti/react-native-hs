{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE RankNTypes            #-}
module React.Flux.Rn.Components.TouchableOpacity (
    module React.Flux.Rn.Components.TouchableOpacity,
    module React.Flux.Rn.Props.TouchableWithoutFeedbackProps,
    module React.Flux.Rn.Types.TvParallaxProperties,
    module React.Flux.Rn.Types
) where

import Prelude                                           (Bool, fmap, (.))
import React.Flux                                        (ReactElementM, foreign_)
import React.Flux.Rn.Properties                          (Has, Props, prop, props)
import React.Flux.Rn.Props.TouchableWithoutFeedbackProps
import React.Flux.Rn.Types                               (UnitInterval)
import React.Flux.Rn.Types.TvParallaxProperties



data TouchableOpacity
touchableOpacity :: [Props TouchableOpacity handler] -> ReactElementM handler a -> ReactElementM handler a
touchableOpacity = foreign_ "TouchableOpacity" . fmap props



activeOpacity :: Has c "activeOpacity" => UnitInterval -> Props c handler
activeOpacity = prop "activeOpacity"

tvParallaxProperties :: Has c "tvParallaxProperties" => TvParallaxProperties -> Props c handler
tvParallaxProperties = prop "tvParallaxProperties"

-- Platform: IOS
hasTVPreferredFocus :: Has c "hasTVPreferredFocus" => Bool -> Props c handler
hasTVPreferredFocus = prop "hasTVPreferredFocus"



instance Has TouchableOpacity "activeOpacity"
instance Has TouchableOpacity "tvParallaxProperties"
instance Has TouchableOpacity "hasTVPreferredFocus"

-- TouchableWithoutFeedbackProps:

instance Has TouchableOpacity "hitSlop"
instance Has TouchableOpacity "accessibilityComponentType"
instance Has TouchableOpacity "accessible"
instance Has TouchableOpacity "delayLongPress"
instance Has TouchableOpacity "delayPressIn"
instance Has TouchableOpacity "delayPressOut"
instance Has TouchableOpacity "disabled"
instance Has TouchableOpacity "accessibilityTraits"
instance Has TouchableOpacity "onLayout"
instance Has TouchableOpacity "onLongPress"
instance Has TouchableOpacity "onPress"
instance Has TouchableOpacity "onPressIn"
instance Has TouchableOpacity "onPressOut"
instance Has TouchableOpacity "pressRetentionOffset"

-- TODO: methods
