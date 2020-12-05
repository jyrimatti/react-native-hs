{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE RankNTypes    #-}
module React.Flux.Rn.Types.Route where

import Data.Aeson                 (ToJSON (..))
import GHC.Generics               (Generic)
import GHCJS.Marshal              (ToJSVal (..))
import Prelude                    (Show, String, Bool, undefined, (.))
import React.Flux                 (EventHandlerType,
                                             PropertyOrHandler)
import React.Flux.Internal        (ReactViewRef (..))
import React.Flux.Rn.Types.BarStyle
import React.Flux.Rn.Types.Color
import React.Flux.Rn.Types.ImageSource

data SystemIcon = Done
                | Cancel
                | Edit
                | Save
                | Add
                | Compose
                | Reply
                | Action
                | Organize
                | Bookmarks
                | Search
                | Refresh
                | Stop
                | Camera
                | Trash
                | Play
                | Pause
                | Rewind
                | FastForward
                | Undo
                | Redo
                | PageCurl
  deriving (Show, Generic)
  
data Route = Route {
  component             :: ReactViewRef (),
  title                 :: String,
  titleImage            :: ImageSource,
  passProps             :: forall handler. [PropertyOrHandler handler],
  backButtonIcon        :: ImageSource,
  backButtonTitle       :: String,
  leftButtonIcon        :: ImageSource,
  leftButtonTitle       :: String,
  leftButtonSystemIcon  :: SystemIcon,
  onLeftButtonPress     :: forall handler. EventHandlerType handler -> PropertyOrHandler handler,
  rightButtonIcon       :: ImageSource,
  rightButtonTitle      :: String,
  rightButtonSystemIcon :: SystemIcon,
  onRightButtonPress    :: forall handler. EventHandlerType handler -> PropertyOrHandler handler,
  wrapperStyle          :: forall handler. [PropertyOrHandler handler],
  navigationBarHidden   :: Bool,
  shadowHidden          :: Bool,
  tintColor             :: Color,
  barTintColor          :: Color,
  barStyle              :: BarStyle,
  titleTextColor        :: Color,
  translucent           :: Bool
}
-- TODO:
instance ToJSON Route where
  toJSON r = undefined
instance ToJSVal Route where
  toJSVal = toJSVal . toJSON