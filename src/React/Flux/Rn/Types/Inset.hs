{-# LANGUAGE DeriveGeneric #-}
module React.Flux.Rn.Types.Inset where

import Data.Aeson                 (ToJSON (..))
import GHC.Generics               (Generic)
import GHCJS.Marshal              (ToJSVal (..))
import Numeric.Natural            (Natural)
import Prelude                    (Show, (.))

data Inset = Inset {
  top    :: Natural,
  left   :: Natural,
  bottom :: Natural,
  right  :: Natural
} deriving (Show,Generic)
instance ToJSON Inset
instance ToJSVal Inset where
  toJSVal = toJSVal . toJSON