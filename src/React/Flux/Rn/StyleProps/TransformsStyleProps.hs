{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE FlexibleContexts      #-}
module React.Flux.Rn.StyleProps.TransformsStyleProps (
    module React.Flux.Rn.StyleProps.TransformsStyleProps,
    Angle(..), Transform(..)
) where

import           React.Flux.Rn.Properties (Styles, style, Has)
import           React.Flux.Rn.Types      (Angle (..), Transform (..))

transform :: Has c "transform" => [Transform] -> Styles c handler
transform = style "transform"
