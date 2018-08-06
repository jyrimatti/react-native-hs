{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RankNTypes        #-}
module React.Flux.Rn.Components.StatusBar (
    module React.Flux.Rn.Components.StatusBar,
    Color(..), ShowHideTransition(..),
    StatusBarStyle(..)
) where

import           Prelude                  (Bool)
import           Prelude                  (fmap)
import           Prelude                       ((.))
import           React.Flux               (ReactElementM, foreign_)
import           React.Flux.Rn.Properties (Props, prop, props)
import           React.Flux.Rn.Types      (Color (..), ShowHideTransition (..),
                                           StatusBarStyle (..))

data StatusBar
statusBar :: [Props StatusBar handler] -> ReactElementM handler a -> ReactElementM handler a
statusBar = foreign_ "StatusBar" . fmap props

animated :: Bool -> Props StatusBar handler
animated = prop "animated"

barStyle :: StatusBarStyle -> Props StatusBar handler
barStyle = prop "barStyle"

hidden :: Bool -> Props StatusBar handler
hidden = prop "hidden"

-- Platform: Android
backgroundColor :: Color -> Props StatusBar handler
backgroundColor = prop "backgroundColor"

-- Platform: Android
translucent :: Bool -> Props StatusBar handler
translucent = prop "translucent"

-- Platform: IOS
networkActivityIndicatorVisible :: Bool -> Props StatusBar handler
networkActivityIndicatorVisible = prop "networkActivityIndicatorVisible"

-- Platform: IOS
showHideTransition :: ShowHideTransition -> Props StatusBar handler
showHideTransition = prop "showHideTransition"

-- TODO: Methods
