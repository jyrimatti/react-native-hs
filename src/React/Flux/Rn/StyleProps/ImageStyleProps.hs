{-# LANGUAGE DataKinds               #-}
{-# LANGUAGE DeriveGeneric           #-}
{-# LANGUAGE FlexibleContexts        #-}
{-# LANGUAGE OverloadedStrings       #-}
module React.Flux.Rn.StyleProps.ImageStyleProps (
    module React.Flux.Rn.StyleProps.ImageStyleProps,
    module React.Flux.Rn.Types,
    module React.Flux.Rn.Types.Color,
    module React.Flux.Rn.Types.Visibility
) where

import GHC.Generics                   (Generic)
import GHCJS.Marshal                  (ToJSVal (..))
import Numeric.Natural                (Natural)
import Prelude                        (Show, String)
import React.Flux.Rn.Properties       (Has, Styles, style)

import React.Flux.Rn.Types            (UnitInterval)
import React.Flux.Rn.Types.Color
import React.Flux.Rn.Types.Visibility


data ResizeMode = Contain
                | Cover
                | Stretch
                | Center
                | Repeat
  deriving (Show,Generic)
instance ToJSVal ResizeMode where
  toJSVal Contain = toJSVal ("contain" :: String)
  toJSVal Cover   = toJSVal ("cover" :: String)
  toJSVal Stretch = toJSVal ("stretch" :: String)
  toJSVal Center  = toJSVal ("center" :: String)
  toJSVal Repeat  = toJSVal ("repeat" :: String)

borderTopRightRadius :: Has c "borderTopRightRadius" => Natural -> Styles c handler
borderTopRightRadius = style "borderTopRightRadius"

backfaceVisibility :: Has c "backfaceVisibility" => Visibility -> Styles c handler
backfaceVisibility = style "backfaceVisibility"

borderBottomLeftRadius :: Has c "borderBottomLeftRadius" => Natural -> Styles c handler
borderBottomLeftRadius = style "borderBottomLeftRadius"

borderBottomRightRadius :: Has c "borderBottomRightRadius" => Natural -> Styles c handler
borderBottomRightRadius = style "borderBottomRightRadius"

borderColor :: Has c "borderColor" => Color -> Styles c handler
borderColor = style "borderColor"

borderRadius :: Has c "borderRadius" => Natural -> Styles c handler
borderRadius = style "borderRadius"

borderTopLeftRadius :: Has c "borderTopLeftRadius" => Natural -> Styles c handler
borderTopLeftRadius = style "borderTopLeftRadius"

backgroundColor :: Has c "backgroundColor" => Color -> Styles c handler
backgroundColor = style "backgroundColor"

borderWidth :: Has c "borderWidth" => Natural -> Styles c handler
borderWidth = style "borderWidth"

opacity :: Has c "opacity" => UnitInterval -> Styles c handler
opacity = style "opacity"

overflow :: Has c "overflow" => Visibility -> Styles c handler
overflow = style "overflow"

resizeMode :: Has c "resizeMode" => ResizeMode -> Styles c handler
resizeMode = style "resizeMode"

tintColor :: Has c "tintColor" => Color -> Styles c handler
tintColor = style "tintColor"

overlayColor :: Has c "overlayColor" => Color -> Styles c handler
overlayColor = style "overlayColor"
