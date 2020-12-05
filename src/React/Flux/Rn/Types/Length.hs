{-# LANGUAGE DeriveGeneric #-}
module React.Flux.Rn.Types.Length where

import Data.String                (IsString (..))
import GHC.Generics               (Generic)
import GHCJS.Marshal              (ToJSVal (..))
import Numeric.Natural            (Natural)
import Prelude                    (Show(show), (.), Num(..), (<>), fromIntegral, last, (==), ($), read, init)

import React.Flux.Rn.Types ()

data Length = Pt Natural | Perc Natural
  deriving (Show, Generic)
instance Num Length where
  Pt a + Pt b = Pt (a+b)
  fromInteger = Pt . fromIntegral
instance IsString Length where
  fromString x | (last x == '%') = Perc (read $ init x)
instance ToJSVal Length where
  toJSVal (Pt x)   = toJSVal x
  toJSVal (Perc x) = toJSVal $ show x <> "%"