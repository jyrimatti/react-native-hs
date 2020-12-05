{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE DeriveGeneric         #-}
{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE RankNTypes            #-}
module React.Flux.Rn.Components.TouchableNativeFeedback (
    module React.Flux.Rn.Components.TouchableNativeFeedback,
    module React.Flux.Rn.Props.TouchableWithoutFeedbackProps
) where

import GHC.Generics               (Generic)
import GHCJS.Marshal              (ToJSVal (..))
import Prelude                    (Bool, fmap, (.))
import React.Flux                                        (ReactElementM, foreign_)
import React.Flux.Rn.Properties                          (Has, Props, prop, props)
import React.Flux.Rn.Props.TouchableWithoutFeedbackProps

data TouchableNativeFeedback
touchableNativeFeedback :: [Props TouchableNativeFeedback handler] -> ReactElementM handler a -> ReactElementM handler a
touchableNativeFeedback = foreign_ "TouchableNativeFeedback" . fmap props

-- TODO:
data BackgroundPropType
  deriving Generic
instance ToJSVal BackgroundPropType


background :: Has c "background" => BackgroundPropType -> Props c handler
background = prop "background"

useForeground :: Has c "useForeground" => Bool -> Props c handler
useForeground = prop "useForeground"



instance Has TouchableNativeFeedback "background"
instance Has TouchableNativeFeedback "useForeground"

-- TouchableWithoutFeedbackProps:

instance Has TouchableNativeFeedback "hitSlop"
instance Has TouchableNativeFeedback "accessibilityComponentType"
instance Has TouchableNativeFeedback "accessible"
instance Has TouchableNativeFeedback "delayLongPress"
instance Has TouchableNativeFeedback "delayPressIn"
instance Has TouchableNativeFeedback "delayPressOut"
instance Has TouchableNativeFeedback "disabled"
instance Has TouchableNativeFeedback "accessibilityTraits"
instance Has TouchableNativeFeedback "onLayout"
instance Has TouchableNativeFeedback "onLongPress"
instance Has TouchableNativeFeedback "onPress"
instance Has TouchableNativeFeedback "onPressIn"
instance Has TouchableNativeFeedback "onPressOut"
instance Has TouchableNativeFeedback "pressRetentionOffset"


-- TODO: methods
