{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE NoImplicitPrelude     #-}
{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE RankNTypes            #-}
module React.Flux.Rn.Props.TouchableWithoutFeedbackProps (
    module React.Flux.Rn.Props.TouchableWithoutFeedbackProps,
    AccessibilityComponentTypes(..),
    AccessibilityTraits(..), Inset(Inset), OnLayout(OnLayout)
) where

import           Numeric.Natural          (Natural)
import           Prelude                  (Bool)
import           React.Flux.Rn.Events     (EventHandlerType, on0, on1)
import           React.Flux.Rn.Properties (Has, Props, prop)
import           React.Flux.Rn.Types      (AccessibilityComponentTypes (..),
                                           AccessibilityTraits (..),
                                           Inset (Inset), OnLayout (OnLayout))

hitSlop :: Has component "hitSlop" => Inset -> Props component handler
hitSlop = prop "hitSlop"

accessibilityComponentType :: Has component "accessibilityComponentType" => AccessibilityComponentTypes -> Props component handler
accessibilityComponentType = prop "accessibilityComponentType"

accessible :: Has component "accessible" => Bool -> Props component handler
accessible = prop "accessible"

delayLongPress :: Has component "delayLongPress" => Natural -> Props component handler
delayLongPress = prop "delayLongPress"

delayPressIn :: Has component "delayPressIn" => Natural -> Props component handler
delayPressIn = prop "delayPressIn"

delayPressOut :: Has component "delayPressOut" => Natural -> Props component handler
delayPressOut = prop "delayPressOut"

disabled :: Has component "disabled" => Bool -> Props component handler
disabled = prop "disabled"

accessibilityTraits :: Has component "accessibilityTraits" => AccessibilityTraits -> Props component handler
accessibilityTraits = prop "accessibilityTraits"

onLayout :: forall component handler. Has component "onLayout" => (OnLayout -> EventHandlerType handler) -> Props component handler
onLayout = on1 "onLayout"

onLongPress :: forall component handler. Has component "onLongPress" => EventHandlerType handler -> Props component handler
onLongPress = on0 "onLongPress"

onPress :: forall component handler. Has component "onPress" => EventHandlerType handler -> Props component handler
onPress = on0 "onPress"

onPressIn :: forall component handler. Has component "onPressIn" => EventHandlerType handler -> Props component handler
onPressIn = on0 "onPressIn"

onPressOut :: forall component handler. Has component "onPressOut" => EventHandlerType handler -> Props component handler
onPressOut = on0 "onPressOut"

pressRetentionOffset :: Has component "pressRetentionOffset" => Inset -> Props component handler
pressRetentionOffset = prop "pressRetentionOffset"

{-
instance Has c "hitSlop"
instance Has c "accessibilityComponentType"
instance Has c "accessible"
instance Has c "delayLongPress"
instance Has c "delayPressIn"
instance Has c "delayPressOut"
instance Has c "disabled"
instance Has c "accessibilityTraits"
instance Has c "onLayout"
instance Has c "onLongPress"
instance Has c "onPress"
instance Has c "onPressIn"
instance Has c "onPressOut"
instance Has c "pressRetentionOffset"
-}
