{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE DeriveGeneric         #-}
{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings     #-}
module React.Flux.Rn.Components.DrawerLayoutAndroid (
    module React.Flux.Rn.Components.DrawerLayoutAndroid,
    module React.Flux.Rn.Types.KeyboardDismissMode,
    module React.Flux.Rn.Types.Color,
    module React.Flux.Rn.Props.ViewProps
) where

import Data.Typeable                 (Typeable)
import GHC.Generics               (Generic)
import GHCJS.Marshal              (ToJSVal (..))
import Numeric.Natural               (Natural)
import Prelude                       (fmap, (.), Show, String)
import React.Flux                    (ReactElementM, foreign_)
import React.Flux.Internal        (ReactViewRef (..))
import React.Flux.Rn.Events          (EventHandlerType, on0)
import React.Flux.Rn.Properties      (Props, prop, props, Has)
import React.Flux.Rn.Props.ViewProps
import React.Flux.Rn.Types.Color
import React.Flux.Rn.Types.KeyboardDismissMode (KeyboardDismissMode)


data DrawerLayoutAndroid
drawerLayoutAndroid :: [Props DrawerLayoutAndroid handler] -> ReactElementM handler a -> ReactElementM handler a
drawerLayoutAndroid = foreign_ "DrawerLayoutAndroid" . fmap props

data DrawerPosition = Left | Right
  deriving (Show, Generic)
instance ToJSVal DrawerPosition where
  toJSVal Left  = toJSVal ("left" :: String)
  toJSVal Right = toJSVal ("right" :: String)

data DrawerLockMode = Unlocked | LockedClosed | LockedOpen
  deriving (Show, Generic)
instance ToJSVal DrawerLockMode where
  toJSVal Unlocked     = toJSVal ("unlocked" :: String)
  toJSVal LockedClosed = toJSVal ("locked-closed" :: String)
  toJSVal LockedOpen   = toJSVal ("locked-open" :: String)

-- Required
renderNavigationView :: Has c "renderNavigationView" => Typeable props => ReactViewRef props -> Props c handler
renderNavigationView = prop "renderNavigationView"

onDrawerClose :: Has c "onDrawerClose" => EventHandlerType handler -> Props c handler
onDrawerClose = on0 "onDrawerClose"

drawerPosition :: Has c "drawerPosition" => DrawerPosition -> Props c handler
drawerPosition = prop "drawerPosition"

drawerWidth :: Has c "drawerWidth" => Natural -> Props c handler
drawerWidth = prop "drawerWidth"

keyboardDismissMode :: Has c "keyboardDismissMode" => KeyboardDismissMode -> Props c handler
keyboardDismissMode = prop "keyboardDismissMode"

drawerLockMode :: Has c "drawerLockMode" => DrawerLockMode -> Props c handler
drawerLockMode = prop "drawerLockMode"

onDrawerOpen :: Has c "onDrawerOpen" => EventHandlerType handler -> Props c handler
onDrawerOpen = on0 "onDrawerOpen"

onDrawerSlide :: Has c "onDrawerSlide" => EventHandlerType handler -> Props c handler
onDrawerSlide = on0 "onDrawerSlide"

onDrawerStateChanged :: Has c "onDrawerStateChanged" => EventHandlerType handler -> Props c handler
onDrawerStateChanged = on0 "onDrawerStateChanged"

drawerBackgroundColor :: Has c "drawerBackgroundColor" => Color -> Props c handler
drawerBackgroundColor = prop "drawerBackgroundColor"

statusBarBackgroundColor :: Has c "statusBarBackgroundColor" => Color -> Props c handler
statusBarBackgroundColor = prop "statusBarBackgroundColor"



instance Has DrawerLayoutAndroid "renderNavigationView"
instance Has DrawerLayoutAndroid "onDrawerClose"
instance Has DrawerLayoutAndroid "drawerPosition"
instance Has DrawerLayoutAndroid "drawerWidth"
instance Has DrawerLayoutAndroid "keyboardDismissMode"
instance Has DrawerLayoutAndroid "drawerLockMode"
instance Has DrawerLayoutAndroid "onDrawerOpen"
instance Has DrawerLayoutAndroid "onDrawerSlide"
instance Has DrawerLayoutAndroid "onDrawerStateChanged"
instance Has DrawerLayoutAndroid "drawerBackgroundColor"
instance Has DrawerLayoutAndroid "statusBarBackgroundColor"

-- ViewProps:

instance Has DrawerLayoutAndroid "onStartShouldSetResponder"
instance Has DrawerLayoutAndroid "accessibilityLabel"
instance Has DrawerLayoutAndroid "hitSlop"
instance Has DrawerLayoutAndroid "nativeID"
instance Has DrawerLayoutAndroid "onAccessibilityTap"
instance Has DrawerLayoutAndroid "onLayout"
instance Has DrawerLayoutAndroid "onMagicTap"
instance Has DrawerLayoutAndroid "onMoveShouldSetResponder"
instance Has DrawerLayoutAndroid "onMoveShouldSetResponderCapture"
instance Has DrawerLayoutAndroid "onResponderGrant"
instance Has DrawerLayoutAndroid "onResponderMove"
instance Has DrawerLayoutAndroid "onResponderReject"
instance Has DrawerLayoutAndroid "onResponderRelease"
instance Has DrawerLayoutAndroid "onResponderTerminate"
instance Has DrawerLayoutAndroid "onResponderTerminationRequest"
instance Has DrawerLayoutAndroid "accessible"
instance Has DrawerLayoutAndroid "onStartShouldSetResponderCapture"
instance Has DrawerLayoutAndroid "pointerEvents"
instance Has DrawerLayoutAndroid "removeClippedSubviews"
instance Has DrawerLayoutAndroid "style"
instance Has DrawerLayoutAndroid "testID"
instance Has DrawerLayoutAndroid "accessibilityComponentType"
instance Has DrawerLayoutAndroid "accessibilityLiveRegion"
instance Has DrawerLayoutAndroid "collapsable"
instance Has DrawerLayoutAndroid "importantForAccessibility"
instance Has DrawerLayoutAndroid "needsOffscreenAlphaCompositing"
instance Has DrawerLayoutAndroid "renderToHardwareTextureAndroid"
instance Has DrawerLayoutAndroid "accessibilityTraits"
instance Has DrawerLayoutAndroid "accessibilityViewIsModal"
instance Has DrawerLayoutAndroid "shouldRasterizeIOS"


-- TODO: methods
