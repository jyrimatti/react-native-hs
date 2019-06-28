{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE NoImplicitPrelude     #-}
{-# LANGUAGE OverloadedStrings     #-}
module React.Flux.Rn.Components.Button (
    module React.Flux.Rn.Components.Button,
    Color(..),
    CommonProps.color
) where

import Prelude (Bool, String, fmap, (.))
import           Prelude                  ((.),($),mempty)
import           React.Flux               (ReactElementM, foreign_)
import           React.Flux.Rn.Events     (EventHandlerType, on0)
import           React.Flux.Rn.Properties (Has, Props, prop, props)
import           React.Flux.Rn.Types      (Color (..))
import qualified React.Flux.Rn.Props.CommonProps as CommonProps



data Button
button :: [Props Button handler] -> ReactElementM handler ()
button = ($ mempty) . foreign_ "Button" . fmap props



-- Required
onPress :: Has c "onPress" => EventHandlerType handler -> Props c handler
onPress = on0 "onPress"

-- Required
title :: Has c "title" => String -> Props c handler
title = prop "title"

accessibilityLabel :: Has c "accessibilityLabel" => String -> Props c handler
accessibilityLabel = prop "accessibilityLabel"

--color :: Has c "color" => Color -> Props c handler
--color = prop "color"

disabled :: Has c "disabled" => Bool -> Props c handler
disabled = prop "disabled"

testID :: Has c "testID" => String -> Props c handler
testID = prop "testID"

-- Platform: AppleTV
hasTVPreferredFocus :: Has c "hasTVPreferredFocus" => Bool -> Props c handler
hasTVPreferredFocus = prop "hasTVPreferredFocus"



instance Has Button "onPress"
instance Has Button "title"
instance Has Button "accessibilityLabel"
instance Has Button "color"
instance Has Button "disabled"
instance Has Button "testID"
instance Has Button "hasTVPreferredFocus"
