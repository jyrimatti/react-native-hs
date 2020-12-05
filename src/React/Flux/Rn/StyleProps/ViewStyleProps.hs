{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE DeriveGeneric         #-}
{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE OverloadedStrings     #-}
module React.Flux.Rn.StyleProps.ViewStyleProps (
    module React.Flux.Rn.StyleProps.ViewStyleProps,
    module React.Flux.Rn.Types,
    module React.Flux.Rn.Types.Color,
    module React.Flux.Rn.Types.Visibility
) where

import GHC.Generics               (Generic)
import GHCJS.Marshal              (ToJSVal (..))
import Numeric.Natural            (Natural)
import Prelude                    (Show, String)
import React.Flux.Rn.Properties (Styles, style, Has)

import React.Flux.Rn.Types      (UnitInterval)
import React.Flux.Rn.Types.Color
import React.Flux.Rn.Types.Visibility

data BorderStyle = Solid | Dotted | Dashed
  deriving (Show, Generic)
instance ToJSVal BorderStyle where
  toJSVal Solid  = toJSVal ("solid" :: String)
  toJSVal Dotted = toJSVal ("dotted" :: String)
  toJSVal Dashed = toJSVal ("dashed" :: String)


borderRightColor :: Has c "borderRightColor" => Color -> Styles c handler
borderRightColor = style "borderRightColor"

backfaceVisibility :: Has c "backfaceVisibility" => Visibility -> Styles c handler
backfaceVisibility = style "backfaceVisibility"

borderBottomColor :: Has c "borderBottomColor" => Color -> Styles c handler
borderBottomColor = style "borderBottomColor"

borderBottomEndRadius :: Has c "borderBottomEndRadius" => Natural -> Styles c handler
borderBottomEndRadius = style "borderBottomEndRadius"

borderBottomLeftRadius :: Has c "borderBottomLeftRadius" => Natural -> Styles c handler
borderBottomLeftRadius = style "borderBottomLeftRadius"

borderBottomRightRadius :: Has c "borderBottomRightRadius" => Natural -> Styles c handler
borderBottomRightRadius = style "borderBottomRightRadius"

borderBottomStartRadius :: Has c "borderBottomStartRadius" => Natural -> Styles c handler
borderBottomStartRadius = style "borderBottomStartRadius"

borderBottomWidth :: Has c "borderBottomWidth" => Natural -> Styles c handler
borderBottomWidth = style "borderBottomWidth"

borderColor :: Has c "borderColor" => Color -> Styles c handler
borderColor = style "borderColor"

borderEndColor :: Has c "borderEndColor" => Color -> Styles c handler
borderEndColor = style "borderEndColor"

borderLeftWidth :: Has c "borderLeftWidth" => Natural -> Styles c handler
borderLeftWidth = style "borderLeftWidth"

borderRadius :: Has c "borderRadius" => Natural -> Styles c handler
borderRadius = style "borderRadius"

backgroundColor :: Has c "backgroundColor" => Color -> Styles c handler
backgroundColor = style "backgroundColor"

borderRightWidth :: Has c "borderRightWidth" => Natural -> Styles c handler
borderRightWidth = style "borderRightWidth"

borderStartColor :: Has c "borderStartColor" => Color -> Styles c handler
borderStartColor = style "borderStartColor"

borderStyle :: Has c "borderStyle" => BorderStyle -> Styles c handler
borderStyle = style "borderStyle"

borderTopColor :: Has c "borderTopColor" => Color -> Styles c handler
borderTopColor = style "borderTopColor"

borderTopEndRadius :: Has c "borderTopEndRadius" => Natural -> Styles c handler
borderTopEndRadius = style "borderTopEndRadius"

borderTopLeftRadius :: Has c "borderTopLeftRadius" => Natural -> Styles c handler
borderTopLeftRadius = style "borderTopLeftRadius"

borderTopRightRadius :: Has c "borderTopRightRadius" => Natural -> Styles c handler
borderTopRightRadius = style "borderTopRightRadius"

borderTopStartRadius :: Has c "borderTopStartRadius" => Natural -> Styles c handler
borderTopStartRadius = style "borderTopStartRadius"

borderTopWidth :: Has c "borderTopWidth" => Natural -> Styles c handler
borderTopWidth = style "borderTopWidth"

borderWidth :: Has c "borderWidth" => Natural -> Styles c handler
borderWidth = style "borderWidth"

opacity :: Has c "opacity" => UnitInterval -> Styles c handler
opacity = style "opacity"

elevation :: Has c "elevation" => Natural -> Styles c handler
elevation = style "elevation"
