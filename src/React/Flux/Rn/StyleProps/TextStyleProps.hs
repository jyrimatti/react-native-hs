{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE FlexibleContexts      #-}
module React.Flux.Rn.StyleProps.TextStyleProps (
    module React.Flux.Rn.StyleProps.TextStyleProps,
    Color (..), ContentSize (ContentSize), FontStyle (..), FontVariant (..), FontWeight (..), TextAlign (..), TextAlignVertical (..), TextDecorationLine (..), TextDecorationStyle (..), WritingDirection (..)
) where

import           Numeric.Natural          (Natural)
import           Prelude                  (Bool, Double, String)
import           React.Flux.Rn.Properties (Styles, style, Has)
import           React.Flux.Rn.Types      (Color (..),
                                           ContentSize (ContentSize),
                                           FontStyle (..), FontVariant (..),
                                           FontWeight (..), TextAlign (..),
                                           TextAlignVertical (..),
                                           TextDecorationLine (..),
                                           TextDecorationStyle (..),
                                           WritingDirection (..))

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
