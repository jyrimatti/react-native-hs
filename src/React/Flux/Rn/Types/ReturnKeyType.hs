{-# LANGUAGE DeriveGeneric             #-}
module React.Flux.Rn.Types.ReturnKeyType where

import GHC.Generics (Generic)
import GHCJS.Marshal              (ToJSVal (..))
import Prelude (Show, String)

data ReturnKeyType = Done
                   | Go
                   | Next
                   | Search
                   | Send
                   | None
                   | Previous
                   | Default
                   | EmergencyCall
                   | Google
                   | Join
                   | Route
                   | Yahoo
  deriving (Show, Generic)
instance ToJSVal ReturnKeyType where
  toJSVal Done          = toJSVal ("done" :: String)
  toJSVal Go            = toJSVal ("go" :: String)
  toJSVal Next          = toJSVal ("next" :: String)
  toJSVal Search        = toJSVal ("search" :: String)
  toJSVal Send          = toJSVal ("send" :: String)
  toJSVal None          = toJSVal ("none" :: String)
  toJSVal Previous      = toJSVal ("previous" :: String)
  toJSVal Default       = toJSVal ("default" :: String)
  toJSVal EmergencyCall = toJSVal ("emergency-call" :: String)
  toJSVal Google        = toJSVal ("google" :: String)
  toJSVal Join          = toJSVal ("join" :: String)
  toJSVal Route         = toJSVal ("route" :: String)
  toJSVal Yahoo         = toJSVal ("yahoo" :: String)