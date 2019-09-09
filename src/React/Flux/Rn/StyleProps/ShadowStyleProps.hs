{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE FlexibleContexts      #-}
module React.Flux.Rn.StyleProps.ShadowStyleProps (
    module React.Flux.Rn.StyleProps.ShadowStyleProps,
    Color(..), ContentSize(ContentSize), UnitInterval
) where

import           Numeric.Natural          (Natural)
import           React.Flux.Rn.Properties (Styles, style, Has)
import           React.Flux.Rn.Types      (Color (..),
                                           ContentSize (ContentSize),
                                           UnitInterval)

-- Platform: IOS
shadowColor :: Has c "shadowColor" => Color -> Styles c handler
shadowColor = style "shadowColor"

-- Platform: IOS
shadowOffset :: Has c "shadowOffset" => ContentSize -> Styles c handler
shadowOffset = style "shadowOffset"

-- Platform: IOS
shadowOpacity :: Has c "shadowOpacity" => UnitInterval -> Styles c handler
shadowOpacity = style "shadowOpacity"

-- Platform: IOS
shadowRadius :: Has c "shadowRadius" => Natural -> Styles c handler
shadowRadius = style "shadowRadius"
