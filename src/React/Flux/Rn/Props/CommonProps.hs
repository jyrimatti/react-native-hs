{-# LANGUAGE CPP                    #-}
{-# LANGUAGE DataKinds              #-}
{-# LANGUAGE FlexibleContexts       #-}
{-# LANGUAGE OverloadedStrings      #-}
module React.Flux.Rn.Props.CommonProps (
    module React.Flux.Rn.Props.CommonProps,
    module React.Flux.Rn.Types.BarStyle,
    module React.Flux.Rn.Types.Color
) where

import Data.String                  (IsString (fromString))
import GHCJS.Types                  (JSString, jsval)
import Prelude                      (IO, error, return, ($), (<>))
import React.Flux.Internal          (HandlerArg (..), PropertyOrHandler_ (CallbackPropertyWithSingleArgument))
import React.Flux.Rn.Events         (EventHandlerType, This (..))
import React.Flux.Rn.Properties     (Has, Props (..), Styles, nestedProp, prop, prop_)
import React.Flux.Rn.Types.BarStyle

import React.Flux.Rn.Types.Color
import React.Flux.Rn.Util           (js_debug)

ref :: Has c "ref" => (This c -> EventHandlerType handler) -> Props c handler
ref f = prop_ $ CallbackPropertyWithSingleArgument "ref" $ \h -> do
    ret <- js_ref h
    _ <- js_debug $ jsval $ fromString "ref: " <> ret
    return $ f (This ret)

color :: Has c "color" => Color -> Props c handler
color = prop "color"

tintColor :: Has c "tintColor" => Color -> Props c handler
tintColor = prop "tintColor"

selectionColor :: Has c "selectionColor" => Color -> Props c handler
selectionColor = prop "selectionColor"

style :: Has c "style" => [Styles c handler] -> Props c handler
style = nestedProp "style"

barStyle :: Has c "barStyle" => BarStyle -> Props c handler
barStyle = prop "barStyle"



#ifdef __GHCJS__

-- TODO: make elegant :)
foreign import javascript unsafe
    "if (window.rn_componentRefs == undefined) {window.rn_componentRefs = {};}; $r = 'rn_'+Math.random(); if ($1) { $1['_rn_ref'] = $r}; window.rn_componentRefs[$r] = $1;"
    js_ref :: HandlerArg -> IO JSString

#else

js_ref :: HandlerArg -> IO JSString
js_ref _ = error "js_ref only works with GHCJS"

#endif


