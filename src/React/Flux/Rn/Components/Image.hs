{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE NoImplicitPrelude     #-}
{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE RankNTypes            #-}
module React.Flux.Rn.Components.Image (
    module React.Flux.Rn.Components.Image,
    DefaultSource(..), ImageSource(..), Inset(Inset),
    OnLayout(OnLayout), OnLayoutVals(OnLayoutVals),
    OnProgress(OnProgress), ResizeMethod(..),
    CommonProps.style
) where

import           GHCJS.Marshal            (FromJSVal (..))
import           Numeric.Natural          (Natural)
import           Prelude                  (Bool, String, ($))
import           Prelude                  ((.))
import           Prelude                  (fmap)
import           React.Flux               (ReactElementM, foreign_)
import           React.Flux.Rn.Events     (EventHandlerType, on0, on1)
import           React.Flux.Rn.Properties (Has, Props, Styles, nestedProp, prop,
                                           props)
import qualified React.Flux.Rn.Props.CommonProps as CommonProps
import           React.Flux.Rn.Types      (DefaultSource (..), ImageSource (..),
                                           Inset (Inset), OnLayout (OnLayout),
                                           OnLayoutVals (OnLayoutVals),
                                           OnProgress (OnProgress),
                                           ResizeMethod (..))



data Image
image :: [Props Image handler] -> ReactElementM handler a -> ReactElementM handler a
image = foreign_ "Image" . fmap props



--style :: Has c "style" => [Styles c handler] -> Props c handler
--style = nestedProp "style"

blurRadius :: Has c "blurRadius" => Natural -> Props c handler
blurRadius = prop "blurRadius"

onLayout :: Has c "onLayout" => (OnLayoutVals -> EventHandlerType handler) -> Props c handler
onLayout f = on1 "onLayout" $ \(OnLayout layout) -> f layout

onLoad :: Has c "onLoad" => EventHandlerType handler -> Props c handler
onLoad = on0 "onLoad"

onLoadEnd :: Has c "onLoadEnd" => EventHandlerType handler -> Props c handler
onLoadEnd = on0 "onLoadEnd"

onLoadStart :: Has c "onLoadStart" => EventHandlerType handler -> Props c handler
onLoadStart = on0 "onLoadStart"

source :: Has c "source" => ImageSource -> Props c handler
source = prop "source"

onError :: Has c "onError" => FromJSVal err => (err -> EventHandlerType handler) -> Props c handler
onError f = on1 "onError" $ \err -> f err

testID :: Has c "testID" => String -> Props c handler
testID = prop "testID"

-- Platform: Android
resizeMethod :: Has c "resizeMethod" => ResizeMethod -> Props c handler
resizeMethod = prop "resizeMethod"

-- Platform: IOS
accessibilityLabel :: Has c "accessibilityLabel" => String -> Props c handler
accessibilityLabel = prop "accessibilityLabel"

-- Platform: IOS
accessible :: Has c "accessible" => Bool -> Props c handler
accessible = prop "accessible"

-- Platform: IOS
capInsets :: Has c "capInsets" => Inset -> Props c handler
capInsets = prop "capInsets"

-- Platform: IOS
defaultSource :: Has c "defaultSource" => DefaultSource -> Props c handler
defaultSource = prop "defaultSource"

-- Platform: IOS
onPartialLoad :: Has c "onPartialLoad" => EventHandlerType handler -> Props c handler
onPartialLoad = on0 "onPartialLoad"

-- Platform: IOS
onProgress :: Has c "onProgress" => (OnProgress -> EventHandlerType handler) -> Props c handler
onProgress f = on1 "onProgress" $ \x -> f x



instance Has Image "style"
instance Has Image "blurRadius"
instance Has Image "onLayout"
instance Has Image "onLoad"
instance Has Image "onLoadEnd"
instance Has Image "onLoadStart"
instance Has Image "source"
instance Has Image "onError"
instance Has Image "testID"
instance Has Image "resizeMethod"
instance Has Image "accessibilityLabel"
instance Has Image "accessible"
instance Has Image "capInsets"
instance Has Image "defaultSource"
instance Has Image "onPartialLoad"
instance Has Image "onProgress"

-- TODO: methods
