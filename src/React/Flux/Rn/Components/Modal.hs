{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE DeriveGeneric         #-}
{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings     #-}
module React.Flux.Rn.Components.Modal (
    module React.Flux.Rn.Components.Modal
) where

import GHC.Generics               (Generic)
import GHCJS.Marshal              (ToJSVal (..))
import Prelude                    (Show, String, Bool, (.), fmap)
import React.Flux               (ReactElementM, foreign_)
import React.Flux.Rn.Events     (EventHandlerType, on0)
import React.Flux.Rn.Properties (Has, Props, prop, props)



data Modal
modal :: [Props Modal handler] -> ReactElementM handler a -> ReactElementM handler a
modal = foreign_ "Modal" . fmap props


data PresentationStyle = FullScreen | PageSheet | FormSheet | OverFullScreen
  deriving (Show, Generic)
instance ToJSVal PresentationStyle where
  toJSVal FullScreen     = toJSVal ("fullScreen" :: String)
  toJSVal PageSheet      = toJSVal ("pageSheet" :: String)
  toJSVal FormSheet      = toJSVal ("formSheet" :: String)
  toJSVal OverFullScreen = toJSVal ("overFullScreen" :: String)

data AnimationType = None | Slide | Fade
  deriving (Show, Generic)
instance ToJSVal AnimationType where
  toJSVal None = toJSVal ("none" :: String)
  toJSVal Slide = toJSVal ("slide" :: String)
  toJSVal Fade  = toJSVal ("fade" :: String)

data SupportedOrientations = Portrait
                           | PortraitUpsideDown
                           | Landscape
                           | LandscapeLeft
                           | LandscapeRight
  deriving (Show, Generic)
instance ToJSVal SupportedOrientations where
  toJSVal Portrait           = toJSVal ("portrait" :: String)
  toJSVal PortraitUpsideDown = toJSVal ("portrait-upside-down" :: String)
  toJSVal Landscape          = toJSVal ("landscape" :: String)
  toJSVal LandscapeLeft      = toJSVal ("landscape-left" :: String)
  toJSVal LandscapeRight     = toJSVal ("landscape-right" :: String)


visible :: Has c "visible" => Bool -> Props c handler
visible = prop "visible"

-- Platform: IOS
supportedOrientations :: Has c "supportedOrientations" => SupportedOrientations -> Props c handler
supportedOrientations = prop "supportedOrientations"

onRequestClose :: Has c "onRequestClose" => EventHandlerType handler -> Props c handler
onRequestClose = on0 "onRequestClose"

onShow :: Has c "onShow" => EventHandlerType handler -> Props c handler
onShow = on0 "onShow"

transparent :: Has c "transparent" => Bool -> Props c handler
transparent = prop "transparent"

animationType :: Has c "animationType" => AnimationType -> Props c handler
animationType = prop "animationType"

-- Platform: Android
hardwareAccelerated :: Has c "hardwareAccelerated" => Bool -> Props c handler
hardwareAccelerated = prop "hardwareAccelerated"

-- Platform: IOS
onDismiss :: Has c "onDismiss" => EventHandlerType handler -> Props c handler
onDismiss = on0 "onDismiss"

-- Platform: IOS
onOrientationChange :: Has c "onOrientationChange" => EventHandlerType handler -> Props c handler
onOrientationChange = on0 "onOrientationChange"

-- Platform: IOS
presentationStyle :: Has c "presentationStyle" => PresentationStyle -> Props c handler
presentationStyle = prop "presentationStyle"



instance Has Modal "visible"
instance Has Modal "supportedOrientations"
instance Has Modal "onRequestClose"
instance Has Modal "onShow"
instance Has Modal "transparent"
instance Has Modal "animationType"
instance Has Modal "hardwareAccelerated"
instance Has Modal "onDismiss"
instance Has Modal "onOrientationChange"
instance Has Modal "presentationStyle"
