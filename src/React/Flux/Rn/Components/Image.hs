{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE NoImplicitPrelude     #-}
{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE RankNTypes            #-}
module React.Flux.Rn.Components.Image (
    module React.Flux.Rn.Components.Image,
    module LayoutStyleProps,
    module ShadowStyleProps,
    module TransformsStyleProps,
    DefaultSource(..), ImageSource(..), Inset(Inset),
    OnLayout(OnLayout), OnLayoutVals(OnLayoutVals),
    OnProgress(OnProgress), ResizeMethod(..),
    CommonProps.style
) where

import           GHCJS.Marshal            (FromJSVal (..))
import           Numeric.Natural          (Natural)
import           Prelude ((.), Bool, String, ($), fmap)
import           React.Flux               (ReactElementM, foreign_)
import           React.Flux.Rn.Events     (EventHandlerType, on0, on1)
import           React.Flux.Rn.Properties (Has, Props, prop, props)
import qualified React.Flux.Rn.Props.CommonProps as CommonProps
import           React.Flux.Rn.StyleProps.LayoutStyleProps as LayoutStyleProps
import           React.Flux.Rn.StyleProps.ShadowStyleProps as ShadowStyleProps
import           React.Flux.Rn.StyleProps.TransformsStyleProps as TransformsStyleProps
import           React.Flux.Rn.Types      (DefaultSource (..), ImageSource (..),
                                           Inset (Inset), OnLayout (OnLayout),
                                           OnLayoutVals (OnLayoutVals),
                                           OnProgress (OnProgress),
                                           ResizeMethod (..))


data Image
image :: [Props Image handler] -> ReactElementM handler a -> ReactElementM handler a
image = foreign_ "Image" . fmap props



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



instance Has Image "borderTopRightRadius"
instance Has Image "backfaceVisibility"
instance Has Image "borderBottomLeftRadius"
instance Has Image "borderBottomRightRadius"
instance Has Image "borderColor"
instance Has Image "borderRadius"
instance Has Image "borderTopLeftRadius"
instance Has Image "backgroundColor"
--instance Has Image "borderWidth"
instance Has Image "opacity"
--instance Has Image "overflow"
instance Has Image "resizeMode"
instance Has Image "tintColor"
instance Has Image "overlayColor"

-- LayoutStyleProps:

instance Has Image "marginHorizontal"
instance Has Image "alignContent"
instance Has Image "alignSelf"
instance Has Image "aspectRatio"
instance Has Image "borderBottomWidth"
instance Has Image "borderEndWidth"
instance Has Image "borderLeftWidth"
instance Has Image "borderRightWidth"
instance Has Image "borderStartWidth"
instance Has Image "borderTopWidth"
instance Has Image "borderWidth"
instance Has Image "bottom"
instance Has Image "display"
instance Has Image "end"
instance Has Image "flex"
instance Has Image "flexBasis"
instance Has Image "flexDirection"
instance Has Image "flexGrow"
instance Has Image "flexShrink"
instance Has Image "flexWrap"
instance Has Image "height"
instance Has Image "justifyContent"
instance Has Image "left"
instance Has Image "margin"
instance Has Image "marginBottom"
instance Has Image "marginEnd"
instance Has Image "alignItems"
instance Has Image "marginLeft"
instance Has Image "marginRight"
instance Has Image "marginStart"
instance Has Image "marginTop"
instance Has Image "marginVertical"
instance Has Image "maxHeight"
instance Has Image "maxWidth"
instance Has Image "minHeight"
instance Has Image "minWidth"
instance Has Image "overflow"
instance Has Image "padding"
instance Has Image "paddingBottom"
instance Has Image "paddingEnd"
instance Has Image "paddingHorizontal"
instance Has Image "paddingLeft"
instance Has Image "paddingRight"
instance Has Image "paddingStart"
instance Has Image "paddingTop"
instance Has Image "paddingVertical"
instance Has Image "position"
instance Has Image "right"
instance Has Image "start"
instance Has Image "top"
instance Has Image "width"
instance Has Image "zIndex"
instance Has Image "direction"

-- ShadowStyleProps:

instance Has Image "shadowColor"
instance Has Image "shadowOffset"
instance Has Image "shadowOpacity"
instance Has Image "shadowRadius"

-- TransformsStyleProps:

instance Has Image "transform"