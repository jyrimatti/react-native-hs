{-# LANGUAGE DeriveGeneric #-}
module React.Flux.Rn.Types.Color where

import Data.String (IsString(..))
import Data.Word (Word8)
import GHC.Generics               (Generic)
import GHCJS.Marshal              (ToJSVal (..))
import Numeric.Natural            (Natural)
import Prelude                    (Show(show), String, Double, ($), (<>))

newtype Percentage = Percent Natural
  deriving (Show, Generic)
instance ToJSVal Percentage where
  toJSVal (Percent x) = toJSVal $ show x <> "%"

data Color = Color String
           | Rgb Word8 Word8 Word8
           | Rgba Word8 Word8 Word8 Double
           | Hsl Natural Percentage Percentage
           | Hsla Natural Percentage Percentage Double
           | Transparent
  deriving (Show, Generic)

-- TODO: named colors

instance ToJSVal Color where
  toJSVal (Color s)      = toJSVal s
  toJSVal (Rgb r g b)    = toJSVal $ "rgb("  <> show r <> "," <> show g <> "," <> show b <> ")"
  toJSVal (Rgba r g b a) = toJSVal $ "rgba(" <> show r <> "," <> show g <> "," <> show b <> "," <> show a <> ")"
  toJSVal (Hsl h s l)    = toJSVal $ "hsl("  <> show h <> "," <> show s <> "%," <> show l <> "%)"
  toJSVal (Hsla h s l a) = toJSVal $ "hsla(" <> show h <> "," <> show s <> "%," <> show l <> "%," <> show a <> ")"
  toJSVal Transparent    = toJSVal "transparent"

instance IsString Color where
   fromString "transparent" = Transparent
   fromString x             = Color x