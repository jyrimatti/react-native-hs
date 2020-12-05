{-# LANGUAGE DeriveGeneric     #-}
{-# LANGUAGE OverloadedStrings #-}
module React.Flux.Rn.Types.Action where

import           GHC.Generics               (Generic)
import           GHCJS.Marshal              (ToJSVal (..))
import qualified JavaScript.Object.Internal as OI
import           Prelude                    (Show, String, Bool, (>>=), pure)
import           React.Flux.Rn.Types.ImageSource

data ActionShow = Always | IfRoom | Never
  deriving (Show,Generic)
instance ToJSVal ActionShow where
  toJSVal Always = toJSVal ("always" :: String)
  toJSVal IfRoom = toJSVal ("ifRoom" :: String)
  toJSVal Never  = toJSVal ("never" :: String)

data Action = Action {
  title        :: String,
  icon         :: ImageSource,
  show         :: ActionShow,
  showWithText :: Bool
} deriving (Generic)
instance ToJSVal Action where
  toJSVal (Action t i s w) = do
    obj@(OI.Object obj') <- OI.create
    toJSVal t >>= \x -> OI.setProp "title" x obj
    toJSVal i >>= \x -> OI.setProp "icon" x obj
    toJSVal s >>= \x -> OI.setProp "show" x obj
    toJSVal w >>= \x -> OI.setProp "showWithText" x obj
    pure obj'