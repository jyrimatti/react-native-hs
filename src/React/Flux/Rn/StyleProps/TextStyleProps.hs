{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE DeriveGeneric         #-}
{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE OverloadedStrings     #-}
module React.Flux.Rn.StyleProps.TextStyleProps (
    module React.Flux.Rn.StyleProps.TextStyleProps,
    module React.Flux.Rn.Types.Color,
    module React.Flux.Rn.Types.ContentSize,
    module React.Flux.Rn.Types.TextAlignVertical,
    module React.Flux.Rn.Types.WritingDirection,
    module React.Flux.Rn.Types.FontStyle
) where

import GHC.Generics               (Generic)
import GHCJS.Marshal              (ToJSVal(..))
import Numeric.Natural            (Natural)
import Prelude                    (String, Show, Bool, Double)
import React.Flux.Rn.Properties (Styles, style, Has)

import React.Flux.Rn.Types ()
import React.Flux.Rn.Types.Color
import React.Flux.Rn.Types.ContentSize
import React.Flux.Rn.Types.FontStyle (FontStyle)
import React.Flux.Rn.Types.TextAlignVertical (TextAlignVertical)
import React.Flux.Rn.Types.WritingDirection (WritingDirection)
  
data TextDecorationStyle = Solid | Double | Dotted | Dashed
  deriving (Show, Generic)
instance ToJSVal TextDecorationStyle where
  toJSVal Solid  = toJSVal ("solid" :: String)
  toJSVal Double = toJSVal ("double" :: String)
  toJSVal Dotted = toJSVal ("dotted" :: String)
  toJSVal Dashed = toJSVal ("dashed" :: String)

data FontVariant = SmallCaps | OldStyleNums | LiningNums | TabularNums | ProportionalNums
  deriving (Show, Generic)
instance ToJSVal FontVariant where
  toJSVal SmallCaps        = toJSVal ("small-caps" :: String)
  toJSVal OldStyleNums     = toJSVal ("oldstyle-nums" :: String)
  toJSVal LiningNums       = toJSVal ("lining-nums" :: String)
  toJSVal TabularNums      = toJSVal ("tabular-nums" :: String)
  toJSVal ProportionalNums = toJSVal ("proportional-nums" :: String)

data TextDecorationLine = None | Underline | LineThrough | UnderlineLineThrough
  deriving (Show, Generic)
instance ToJSVal TextDecorationLine where
  toJSVal None                 = toJSVal ("none" :: String)
  toJSVal Underline            = toJSVal ("underline" :: String)
  toJSVal LineThrough          = toJSVal ("line-through" :: String)
  toJSVal UnderlineLineThrough = toJSVal ("underline line-through" :: String)

data TextAlign = Auto | Left | Right | Center | Justify
  deriving (Show, Generic)
instance ToJSVal TextAlign where
  toJSVal Auto    = toJSVal ("normal" :: String)
  toJSVal Left    = toJSVal ("italic" :: String)
  toJSVal Right   = toJSVal ("italic" :: String)
  toJSVal Center  = toJSVal ("italic" :: String)
  toJSVal Justify = toJSVal ("italic" :: String)

data FontWeight = Normal | Bold | W100 | W200 | W300 | W400 | W500 | W600 | W700 | W800 | W900
  deriving (Show, Generic)
instance ToJSVal FontWeight where
  toJSVal Normal    = toJSVal ("normal" :: String)
  toJSVal Bold      = toJSVal ("bold" :: String)
  toJSVal W100      = toJSVal ("100" :: String)
  toJSVal W200      = toJSVal ("200" :: String)
  toJSVal W300      = toJSVal ("300" :: String)
  toJSVal W400      = toJSVal ("400" :: String)
  toJSVal W500      = toJSVal ("500" :: String)
  toJSVal W600      = toJSVal ("600" :: String)
  toJSVal W700      = toJSVal ("700" :: String)
  toJSVal W800      = toJSVal ("800" :: String)
  toJSVal W900      = toJSVal ("900" :: String)

textShadowOffset :: Has c "textShadowOffset" => ContentSize -> Styles c handler
textShadowOffset = style "textShadowOffset"

color :: Has c "color" => Color -> Styles c handler
color = style "color"

fontSize :: Has c "fontSize" => Natural -> Styles c handler
fontSize = style "fontSize"

fontStyle :: Has c "fontStyle" => FontStyle -> Styles c handler
fontStyle = style "fontStyle"

fontWeight :: Has c "fontWeight" => FontWeight -> Styles c handler
fontWeight = style "fontWeight"

lineHeight :: Has c "lineHeight" => Double -> Styles c handler
lineHeight = style "lineHeight"

textAlign :: Has c "textAlign" => TextAlign -> Styles c handler
textAlign = style "textAlign"

textDecorationLine :: Has c "textDecorationLine" => TextDecorationLine -> Styles c handler
textDecorationLine = style "textDecorationLine"

textShadowColor :: Has c "textShadowColor" => Color -> Styles c handler
textShadowColor = style "textShadowColor"

fontFamily :: Has c "fontFamily" => String -> Styles c handler
fontFamily = style "fontFamily"

textShadowRadius :: Has c "textShadowRadius" => Natural -> Styles c handler
textShadowRadius = style "textShadowRadius"

-- Platform: Android
includeFontPadding :: Has c "includeFontPadding" => Bool -> Styles c handler
includeFontPadding = style "includeFontPadding"

-- Platform: Android
textAlignVertical :: Has c "textAlignVertical" => TextAlignVertical -> Styles c handler
textAlignVertical = style "textAlignVertical"

-- Platform: IOS
fontVariant :: Has c "fontVariant" => FontVariant -> Styles c handler
fontVariant = style "fontVariant"

-- Platform: IOS
letterSpacing :: Has c "letterSpacing" => Natural -> Styles c handler
letterSpacing = style "letterSpacing"

-- Platform: IOS
textDecorationColor :: Has c "textDecorationColor" => Color -> Styles c handler
textDecorationColor = style "textDecorationColor"

-- Platform: IOS
textDecorationStyle :: Has c "textDecorationStyle" => TextDecorationStyle -> Styles c handler
textDecorationStyle = style "textDecorationStyle"

-- Platform: IOS
writingDirection :: Has c "writingDirection" => WritingDirection -> Styles c handler
writingDirection = style "writingDirection"
