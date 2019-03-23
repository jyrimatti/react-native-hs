{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE NoImplicitPrelude     #-}
{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE RankNTypes            #-}
module React.Flux.Rn.Components.StatusBar (
    module React.Flux.Rn.Components.StatusBar,
    Color(..), ShowHideTransition(..),
    StatusBarStyle(..),
    CommonProps.style
) where

import           Prelude                         (Bool)
import           Prelude                         (fmap)
import           Prelude                         ((.))
import           React.Flux                      (ReactElementM, foreign_)
import           React.Flux.Rn.Properties        (Has, Props, prop, props)
import qualified React.Flux.Rn.Props.CommonProps as CommonProps
import           React.Flux.Rn.Types             (Color (..),
                                                  ShowHideTransition (..),
                                                  StatusBarStyle (..))



data StatusBar
statusBar :: [Props StatusBar handler] -> ReactElementM handler a -> ReactElementM handler a
statusBar = foreign_ "StatusBar" . fmap props



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
