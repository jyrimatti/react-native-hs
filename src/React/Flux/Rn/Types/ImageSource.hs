{-# LANGUAGE DeriveGeneric #-}
module React.Flux.Rn.Types.ImageSource where

import Data.Aeson                 (ToJSON (..))
import Data.Map                   (Map, empty)
import GHC.Generics               (Generic)
import GHCJS.Marshal              (ToJSVal (..))
import GHCJS.Types                (JSVal)
import Network.URI                (URI)
import Numeric.Natural            (Natural)
import Prelude                    (Maybe(..), String, Double, Show, (.), ($), pure)
import React.Flux.Rn.Types ()
import React.Flux.Rn.Types.Method


data ImageURISource = ImageURISource {
  uri     :: URI,
  bundle  :: Maybe String,
  method  :: Maybe Method,
  headers :: Map String String,
  body    :: Maybe String,
  width   :: Maybe Natural,
  height  :: Maybe Natural,
  scale   :: Maybe Double
} deriving (Show,Generic)
instance ToJSON ImageURISource
instance ToJSVal ImageURISource where
  toJSVal = toJSVal . toJSON

imageURISource uri = ImageURISource uri Nothing Nothing empty Nothing Nothing Nothing Nothing

type JSRequireRef = JSVal

data ImageSource = ImageSourceURI ImageURISource | ImageSourceResource JSRequireRef | ImageSourceURIs [ImageURISource]
  deriving (Generic)
instance ToJSVal ImageSource where
  toJSVal (ImageSourceURI x)      = toJSVal $ toJSON x
  toJSVal (ImageSourceURIs xs)    = toJSVal $ toJSON xs
  toJSVal (ImageSourceResource x) = pure x