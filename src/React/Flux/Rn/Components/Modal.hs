{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE NoImplicitPrelude     #-}
{-# LANGUAGE OverloadedStrings     #-}
module React.Flux.Rn.Components.Modal (
    module React.Flux.Rn.Components.Modal,
    AnimationType(..), SupportedOrientations(..), PresentationStyle(..)
) where

import           Prelude                  (Bool)
import           Prelude                  (fmap)
import           Prelude                  ((.))
import           React.Flux               (ReactElementM, foreign_)
import           React.Flux.Rn.Events     (EventHandlerType, on0)
import           React.Flux.Rn.Properties (Has, Props, prop, props)
import           React.Flux.Rn.Types      (AnimationType (..),
                                           PresentationStyle (..),
                                           SupportedOrientations (..))



data Modal
modal :: [Props Modal handler] -> ReactElementM handler a -> ReactElementM handler a
modal = foreign_ "Modal" . fmap props



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
