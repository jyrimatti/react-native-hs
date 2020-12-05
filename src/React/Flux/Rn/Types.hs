{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE PolyKinds             #-}
{-# LANGUAGE RankNTypes            #-}
module React.Flux.Rn.Types (
  module React.Flux.Rn.Types,
  ReactViewRef
) where

import Data.Aeson                 (ToJSON (..), parseJSON)
import Data.Aeson.Types           (parseMaybe)
import Data.List.NonEmpty         (NonEmpty, toList)
import Data.Time.LocalTime        (LocalTime)
import GHCJS.Marshal              (FromJSVal (..), ToJSVal (..))
import GHCJS.Types                (JSVal)
import Network.URI                (URI, uriToString)
import Numeric.Natural            (Natural)
import Prelude                    (String, IO, Int, Double, Maybe, pure, fromIntegral, fmap, (<$>), undefined, (.), ($), id)
import React.Flux.Internal        (ReactViewRef (..))

{-# ANN module ("HLint: ignore Use camelCase" :: String) #-}

str :: String -> IO JSVal
str = toJSVal

int :: Int -> IO JSVal
int = toJSVal


type Index = Natural


type UnitInterval = Double -- TODO

instance ToJSVal x => ToJSVal (NonEmpty x) where
  toJSVal = toJSVal . toList

instance ToJSVal (ReactViewRef x) where
  toJSVal (ReactViewRef x) = pure x

instance ToJSVal Natural where
  toJSVal nat = toJSVal (fromIntegral nat :: Int)
instance FromJSVal Natural where
  fromJSVal jsval = fmap fromIntegral <$> (fromJSVal jsval :: IO (Maybe Int))

-- TODO: ?
instance ToJSVal LocalTime where
  toJSVal localTime = undefined
instance FromJSVal LocalTime where
  fromJSVal jsval = parseMaybe parseJSON <$> undefined

instance ToJSON URI where
  toJSON uri = toJSON $ uriToString id uri ""
