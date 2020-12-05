{-# LANGUAGE DeriveGeneric #-}
module React.Flux.Rn.Types.OnScroll where

import Data.Aeson                 (FromJSON (..))
import GHC.Generics               (Generic)
import GHCJS.Marshal              (FromJSVal (..))
import Prelude                    (Show)
import React.Flux.Rn.Events       (fromNativeJSON)

import React.Flux.Rn.Types.ContentOffset

newtype OnScroll = OnScroll {
    contentOffset :: ContentOffset
} deriving (Show, Generic)
instance FromJSON OnScroll
instance FromJSVal OnScroll where fromJSVal = fromNativeJSON