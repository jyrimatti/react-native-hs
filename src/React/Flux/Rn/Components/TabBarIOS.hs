{-# LANGUAGE DataKinds                #-}
{-# LANGUAGE DeriveGeneric            #-}
{-# LANGUAGE FlexibleContexts         #-}
{-# LANGUAGE FlexibleInstances        #-}
{-# LANGUAGE MultiParamTypeClasses    #-}
{-# LANGUAGE OverloadedStrings        #-}
{-# LANGUAGE RankNTypes               #-}
module React.Flux.Rn.Components.TabBarIOS (
    module React.Flux.Rn.Components.TabBarIOS,
    module React.Flux.Rn.Props.ViewProps,
    module React.Flux.Rn.Props.CommonProps,
    module React.Flux.Rn.Types.Color
) where

import GHC.Generics               (Generic)
import GHCJS.Marshal              (ToJSVal (..))
import Prelude                    (Show, String, fmap, (.), Bool)
import React.Flux                      (ReactElementM, foreign_)
import React.Flux.Rn.Properties        (Has, Props, prop, props)
import React.Flux.Rn.Props.CommonProps (tintColor, barStyle, BarStyle(..))
import React.Flux.Rn.Props.ViewProps  hiding (ImportantForAccessibility(..))
import React.Flux.Rn.Types.Color



data TabBarIOS
tabBarIOS :: [Props TabBarIOS handler] -> ReactElementM handler a -> ReactElementM handler a
tabBarIOS = foreign_ "TabBarIOS" . fmap props


data ItemPositioning = Fill | Center | Auto
  deriving (Show, Generic)
instance ToJSVal ItemPositioning where
  toJSVal Fill   = toJSVal ("fill" :: String)
  toJSVal Center = toJSVal ("center" :: String)
  toJSVal Auto   = toJSVal ("auto" :: String)


--barStyle :: Has c "barStyle" => BarStyle -> Props c handler
--barStyle = prop "barStyle"

barTintColor :: Has c "barTintColor" => Color -> Props c handler
barTintColor = prop "barTintColor"

itemPositioning :: Has c "itemPositioning" => ItemPositioning -> Props c handler
itemPositioning = prop "itemPositioning"

--tintColor :: Has c "tintColor" => Color -> Props c handler
--tintColor = prop "tintColor"

translucent :: Has c "translucent" => Bool -> Props c handler
translucent = prop "translucent"

unselectedItemTintColor :: Has c "unselectedItemTintColor" => Color -> Props c handler
unselectedItemTintColor = prop "unselectedItemTintColor"

unselectedTintColor :: Has c "unselectedTintColor" => Color -> Props c handler
unselectedTintColor = prop "unselectedTintColor"



instance Has TabBarIOS "barStyle"
instance Has TabBarIOS "barTintColor"
instance Has TabBarIOS "itemPositioning"
instance Has TabBarIOS "tintColor"
instance Has TabBarIOS "translucent"
instance Has TabBarIOS "unselectedItemTintColor"
instance Has TabBarIOS "unselectedTintColor"

-- ViewProps:

instance Has TabBarIOS "onStartShouldSetResponder"
instance Has TabBarIOS "accessibilityLabel"
instance Has TabBarIOS "hitSlop"
instance Has TabBarIOS "nativeID"
instance Has TabBarIOS "onAccessibilityTap"
instance Has TabBarIOS "onLayout"
instance Has TabBarIOS "onMagicTap"
instance Has TabBarIOS "onMoveShouldSetResponder"
instance Has TabBarIOS "onMoveShouldSetResponderCapture"
instance Has TabBarIOS "onResponderGrant"
instance Has TabBarIOS "onResponderMove"
instance Has TabBarIOS "onResponderReject"
instance Has TabBarIOS "onResponderRelease"
instance Has TabBarIOS "onResponderTerminate"
instance Has TabBarIOS "onResponderTerminationRequest"
instance Has TabBarIOS "accessible"
instance Has TabBarIOS "onStartShouldSetResponderCapture"
instance Has TabBarIOS "pointerEvents"
instance Has TabBarIOS "removeClippedSubviews"
instance Has TabBarIOS "style"
instance Has TabBarIOS "testID"
instance Has TabBarIOS "accessibilityComponentType"
instance Has TabBarIOS "accessibilityLiveRegion"
instance Has TabBarIOS "collapsable"
instance Has TabBarIOS "importantForAccessibility"
instance Has TabBarIOS "needsOffscreenAlphaCompositing"
instance Has TabBarIOS "renderToHardwareTextureAndroid"
instance Has TabBarIOS "accessibilityTraits"
instance Has TabBarIOS "accessibilityViewIsModal"
instance Has TabBarIOS "shouldRasterizeIOS"

