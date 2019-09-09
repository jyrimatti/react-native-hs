{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE NoImplicitPrelude     #-}
{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE RankNTypes            #-}
module React.Flux.Rn.Props.CommonProps where

import React.Flux.Rn.Properties (Has, Styles, Props(..), nestedProp, prop)
import React.Flux.Rn.Types      (BarStyle (..), Color (..))

color :: Has c "color" => Color -> Props c handler
color = prop "color"

tintColor :: Has c "tintColor" => Color -> Props c handler
tintColor = prop "tintColor"

titleColor :: Has c "titleColor" => Color -> Props c handler
titleColor = prop "titleColor"

selectionColor :: Has c "selectionColor" => Color -> Props c handler
selectionColor = prop "selectionColor"

style :: Has c "style" => [Styles c handler] -> Props c handler
style = nestedProp "style"

barStyle :: Has c "barStyle" => BarStyle -> Props c handler
barStyle = prop "barStyle"