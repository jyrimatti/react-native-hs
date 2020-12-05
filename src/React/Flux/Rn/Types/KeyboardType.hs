{-# LANGUAGE DeriveGeneric             #-}
module React.Flux.Rn.Types.KeyboardType where

import GHC.Generics               (Generic)
import GHCJS.Marshal              (ToJSVal (..))
import Prelude                    (Show, String)

data KeyboardType = Default
                  | EmailAddress
                  | Numeric
                  | PhonePad
                  | AsciiCapable
                  | NumbersAndPunctuation
                  | Url
                  | NumberPad
                  | NamePhonePad
                  | DecimalPad
                  | Twitter
                  | WebSearch
                  | VisiblePassword
    deriving (Show, Generic)
instance ToJSVal KeyboardType where
  toJSVal Default               = toJSVal ("default" :: String)
  toJSVal EmailAddress          = toJSVal ("email-address" :: String)
  toJSVal Numeric               = toJSVal ("numeric" :: String)
  toJSVal PhonePad              = toJSVal ("phone-pad" :: String)
  toJSVal AsciiCapable          = toJSVal ("ascii-capable" :: String)
  toJSVal NumbersAndPunctuation = toJSVal ("numbers-and-punctuation" :: String)
  toJSVal Url                   = toJSVal ("url" :: String)
  toJSVal NumberPad             = toJSVal ("number-pad" :: String)
  toJSVal NamePhonePad          = toJSVal ("name-phone-pad" :: String)
  toJSVal DecimalPad            = toJSVal ("decimal-pad" :: String)
  toJSVal Twitter               = toJSVal ("twitter" :: String)
  toJSVal WebSearch             = toJSVal ("web-search" :: String)
  toJSVal VisiblePassword       = toJSVal ("visible-password" :: String)