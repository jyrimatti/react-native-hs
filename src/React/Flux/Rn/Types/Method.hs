module React.Flux.Rn.Types.Method where

import Data.Aeson                 (ToJSON (..))
import Prelude                    (Show(show), (.))


data Method
    = GET
    | HEAD
    | POST
    | PUT
    | DELETE
    | TRACE
    | OPTIONS
    | CONNECT
    | PATCH
        deriving Show

instance ToJSON Method where
  toJSON = toJSON . show