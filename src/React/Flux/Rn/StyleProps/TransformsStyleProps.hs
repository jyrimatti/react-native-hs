{-# LANGUAGE DataKinds                 #-}
{-# LANGUAGE DeriveGeneric             #-}
{-# LANGUAGE FlexibleContexts          #-}
{-# LANGUAGE OverloadedStrings         #-}
module React.Flux.Rn.StyleProps.TransformsStyleProps (
    module React.Flux.Rn.StyleProps.TransformsStyleProps
) where


import Data.Aeson                 ((.=), ToJSON (..), object)
import GHC.Generics               (Generic)
import GHCJS.Marshal              (ToJSVal (..))
import Numeric.Natural            (Natural)
import Prelude (Double, Show(show), Int, ($), (<>), (.))
import React.Flux.Rn.Properties (Styles, style, Has)


data Angle = Deg Double | Rad Double
  deriving (Show, Generic)
instance ToJSON Angle where
  toJSON (Deg x) = toJSON $ show x <> "deg"
  toJSON (Rad x) = toJSON $ show x <> "rad"

data Transform = Perspective Int
               | Rotate Angle
               | RotateX Angle
               | RotateY Angle
               | RotateZ Angle
               | Scale Natural
               | ScaleX Natural
               | ScaleY Natural
               | TranslateX Int
               | TranslateY Int
               | SkewX Angle
               | SkewY Angle
  deriving (Show, Generic)

instance ToJSON Transform where
  toJSON (Perspective x) = object [ "perspective" .= x ]
  toJSON (Rotate x)      = object [ "rotate"      .= x ]
  toJSON (RotateX x)     = object [ "rotateX"     .= x ]
  toJSON (RotateY x)     = object [ "rotateY"     .= x ]
  toJSON (RotateZ x)     = object [ "rotateZ"     .= x ]
  toJSON (Scale  x)      = object [ "scale"       .= x ]
  toJSON (ScaleX x)      = object [ "scaleX"      .= x ]
  toJSON (ScaleY x)      = object [ "scaleY"      .= x ]
  toJSON (TranslateX x)  = object [ "translateX"  .= x ]
  toJSON (TranslateY x)  = object [ "translateY"  .= x ]
  toJSON (SkewX x)       = object [ "skewX"       .= x ]
  toJSON (SkewY x)       = object [ "skewY"       .= x ]

instance ToJSVal Transform where
  toJSVal = toJSVal . toJSON
  
transform :: Has c "transform" => [Transform] -> Styles c handler
transform = style "transform"
