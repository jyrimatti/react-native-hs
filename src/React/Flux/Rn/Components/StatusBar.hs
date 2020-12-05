{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE DeriveGeneric         #-}
{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE RankNTypes            #-}
module React.Flux.Rn.Components.StatusBar (
    module React.Flux.Rn.Components.StatusBar,
    module React.Flux.Rn.Props.CommonProps,
    module React.Flux.Rn.Types.Color
) where

import GHC.Generics               (Generic)
import GHCJS.Marshal              (ToJSVal (..))
import Prelude                    (Show, Bool, String, fmap, (.))
import React.Flux                      (ReactElementM, foreign_)
import React.Flux.Rn.Properties        (Has, Props, prop, props)
import React.Flux.Rn.Props.CommonProps (barStyle, BarStyle)
import React.Flux.Rn.Types.Color



data StatusBar
statusBar :: [Props StatusBar handler] -> ReactElementM handler a -> ReactElementM handler a
statusBar = foreign_ "StatusBar" . fmap props


data ShowHideTransition = Fade | Slide
  deriving (Show, Generic)
instance ToJSVal ShowHideTransition where
  toJSVal Fade  = toJSVal ("fade" :: String)
  toJSVal Slide = toJSVal ("slide" :: String)

data StatusBarStyle = Default | LightContent | DarkContent
  deriving (Show, Generic)
instance ToJSVal StatusBarStyle where
  toJSVal Default      = toJSVal ("default" :: String)
  toJSVal LightContent = toJSVal ("light-content" :: String)
  toJSVal DarkContent  = toJSVal ("dark-content" :: String)


animated :: Has c "animated" => Bool -> Props c handler
animated = prop "animated"

--barStyle :: Has c "barStyle" => StatusBarStyle -> Props c handler
--barStyle = prop "barStyle"

hidden :: Has c "hidden" => Bool -> Props c handler
hidden = prop "hidden"

-- Platform: Android
backgroundColor :: Has c "backgroundColor" => Color -> Props c handler
backgroundColor = prop "backgroundColor"

-- Platform: Android
translucent :: Has c "translucent" => Bool -> Props c handler
translucent = prop "translucent"

-- Platform: IOS
networkActivityIndicatorVisible :: Has c "networkActivityIndicatorVisible" => Bool -> Props c handler
networkActivityIndicatorVisible = prop "networkActivityIndicatorVisible"

-- Platform: IOS
showHideTransition :: Has c "showHideTransition" => ShowHideTransition -> Props c handler
showHideTransition = prop "showHideTransition"



instance Has StatusBar "animated"
instance Has StatusBar "barStyle"
instance Has StatusBar "hidden"
instance Has StatusBar "backgroundColor"
instance Has StatusBar "translucent"
instance Has StatusBar "networkActivityIndicatorVisible"
instance Has StatusBar "showHideTransition"

-- TODO: Methods
