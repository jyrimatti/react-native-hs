{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE NoImplicitPrelude     #-}
{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE RankNTypes            #-}
module React.Flux.Rn.Components.NavigatorIOS (
    module React.Flux.Rn.Components.NavigatorIOS,
    BarStyle(..), Color(..), Route(Route),
    CommonProps.tintColor,
    CommonProps.barStyle
) where

import           Prelude                         (Bool)
import           Prelude                         (fmap)
import           Prelude                         ((.))
import           React.Flux                      (ReactElementM, foreign_)
import           React.Flux.Rn.Components.View   (View)
import           React.Flux.Rn.Properties        (Has, Props, Styles,
                                                  nestedProp, prop, props)
import qualified React.Flux.Rn.Props.CommonProps as CommonProps
import           React.Flux.Rn.Types             (BarStyle (..), Color (..),
                                                  Route (Route))



data NavigatorIOS
navigatorIOS :: [Props NavigatorIOS handler] -> ReactElementM handler a -> ReactElementM handler a
navigatorIOS = foreign_ "NavigatorIOS" . fmap props



-- Required
initialRoute :: Has c "initialRoute" => Route -> Props c handler
initialRoute = prop "initialRoute"

--barStyle :: Has c "barStyle" => BarStyle -> Props c handler
--barStyle = prop "barStyle"

barTintColor :: Has c "barTintColor" => Color -> Props c handler
barTintColor = prop "barTintColor"

interactivePopGestureEnabled :: Has c "interactivePopGestureEnabled" => Bool -> Props c handler
interactivePopGestureEnabled = prop "interactivePopGestureEnabled"

itemWrapperStyle :: Has c "itemWrapperStyle" => [Styles View handler] -> Props c handler
itemWrapperStyle = nestedProp "itemWrapperStyle"

navigationBarHidden :: Has c "navigationBarHidden" => Bool -> Props c handler
navigationBarHidden = prop "navigationBarHidden"

shadowHidden :: Has c "shadowHidden" => Bool -> Props c handler
shadowHidden = prop "shadowHidden"

--tintColor :: Has c "tintColor" => Color -> Props c handler
--tintColor = prop "tintColor"

titleTextColor :: Has c "titleTextColor" => Color -> Props c handler
titleTextColor = prop "titleTextColor"

translucent :: Has c "translucent" => Bool -> Props c handler
translucent = prop "translucent"



instance Has NavigatorIOS "initialRoute"
instance Has NavigatorIOS "barStyle"
instance Has NavigatorIOS "barTintColor"
instance Has NavigatorIOS "interactivePopGestureEnabled"
instance Has NavigatorIOS "itemWrapperStyle"
instance Has NavigatorIOS "navigationBarHidden"
instance Has NavigatorIOS "shadowHidden"
instance Has NavigatorIOS "tintColor"
instance Has NavigatorIOS "titleTextColor"
instance Has NavigatorIOS "translucent"

-- TODO: methods
