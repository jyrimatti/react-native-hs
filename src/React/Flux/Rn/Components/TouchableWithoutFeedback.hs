{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE NoImplicitPrelude     #-}
{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE RankNTypes            #-}
module React.Flux.Rn.Components.TouchableWithoutFeedback (
    module React.Flux.Rn.Components.TouchableWithoutFeedback,
    TouchableWithoutFeedbackProps.AccessibilityComponentTypes(..),
    TouchableWithoutFeedbackProps.AccessibilityTraits(..),
    TouchableWithoutFeedbackProps.Inset(Inset),
    TouchableWithoutFeedbackProps.OnLayout(OnLayout)
) where

import           Prelude                                           (fmap, (.))
import           React.Flux                                        (ReactElementM,
                                                                    foreign_)
import           React.Flux.Rn.Properties                          (Has, Props,
                                                                    props)
import qualified React.Flux.Rn.Props.TouchableWithoutFeedbackProps as TouchableWithoutFeedbackProps



data TouchableWithoutFeedback
touchableWithoutFeedback :: [Props TouchableWithoutFeedback handler] -> ReactElementM handler a -> ReactElementM handler a
touchableWithoutFeedback = foreign_ "TouchableWithoutFeedback" . fmap props


-- TouchableWithoutFeedbackProps:

instance Has TouchableWithoutFeedback "hitSlop"
instance Has TouchableWithoutFeedback "accessibilityComponentType"
instance Has TouchableWithoutFeedback "accessible"
instance Has TouchableWithoutFeedback "delayLongPress"
instance Has TouchableWithoutFeedback "delayPressIn"
instance Has TouchableWithoutFeedback "delayPressOut"
instance Has TouchableWithoutFeedback "disabled"
instance Has TouchableWithoutFeedback "accessibilityTraits"
instance Has TouchableWithoutFeedback "onLayout"
instance Has TouchableWithoutFeedback "onLongPress"
instance Has TouchableWithoutFeedback "onPress"
instance Has TouchableWithoutFeedback "onPressIn"
instance Has TouchableWithoutFeedback "onPressOut"
instance Has TouchableWithoutFeedback "pressRetentionOffset"
