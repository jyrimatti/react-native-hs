{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE NoImplicitPrelude     #-}
{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE RankNTypes            #-}
module React.Flux.Rn.Components.Text (
    module React.Flux.Rn.Components.Text,
    module TextStyleProps,
    module ViewStyleProps,
    module LayoutStyleProps,
    module ShadowStyleProps,
    module TransformsStyleProps,
    Color(..), EllipsizeMode(..), Inset(Inset),
    OnLayout (OnLayout), OnLayoutVals(OnLayoutVals),
    TextBreakStrategy(..),
    CommonProps.selectionColor,
    CommonProps.style
) where

import           Numeric.Natural                 (Natural)
import           Prelude                         (Bool, Double, String, ($), (.), fmap)
import           React.Flux                      (ReactElementM, foreign_)
import           React.Flux.Rn.Events            (EventHandlerType, on0, on1)
import           React.Flux.Rn.Properties        (Has, Props, prop, props)
import qualified React.Flux.Rn.Props.CommonProps as CommonProps
import           React.Flux.Rn.StyleProps.LayoutStyleProps as LayoutStyleProps
import           React.Flux.Rn.StyleProps.ShadowStyleProps as ShadowStyleProps
import           React.Flux.Rn.StyleProps.TextStyleProps as TextStyleProps
import           React.Flux.Rn.StyleProps.TransformsStyleProps as TransformsStyleProps
import           React.Flux.Rn.StyleProps.ViewStyleProps as ViewStyleProps hiding (borderBottomWidth, borderLeftWidth, borderRightWidth, borderTopWidth, borderWidth)
import           React.Flux.Rn.Types             (Color (..),
                                                  EllipsizeMode (..),
                                                  Inset (Inset),
                                                  OnLayout (OnLayout),
                                                  OnLayoutVals (OnLayoutVals),
                                                  TextBreakStrategy (..))


data Text
text :: [Props Text handler] -> ReactElementM handler a -> ReactElementM handler a
text = foreign_ "Text" . fmap props



selectable :: Has c "selectable" => Bool -> Props c handler
selectable = prop "selectable"

accessible :: Has c "accessible" => Bool -> Props c handler
accessible = prop "accessible"

ellipsizeMode :: Has c "ellipsizeMode" => EllipsizeMode -> Props c handler
ellipsizeMode = prop "ellipsizeMode"

nativeID :: Has c "nativeID" => String -> Props c handler
nativeID = prop "nativeID"

numberOfLines :: Has c "numberOfLines" => Natural -> Props c handler
numberOfLines = prop "numberOfLines"

onLayout :: Has c "onLayout" => (OnLayoutVals -> EventHandlerType handler) -> Props c handler
onLayout f = on1 "onLayout" $ \(OnLayout x) -> f x

onLongPress :: Has c "onLongPress" => EventHandlerType handler -> Props c handler
onLongPress = on0 "onLongPress"

onPress :: Has c "onPress" => EventHandlerType handler -> Props c handler
onPress = on0 "onPress"

pressRetentionOffset :: Has c "pressRetentionOffset" => Inset -> Props c handler
pressRetentionOffset = prop "pressRetentionOffset"

allowFontScaling :: Has c "allowFontScaling" => Bool -> Props c handler
allowFontScaling = prop "allowFontScaling"

--style :: Has c "style" => [Styles Text handler] -> Props c handler
--style = nestedProp "style"

testID :: Has c "testID" => String -> Props c handler
testID = prop "testID"

-- Platform: Android
disabled :: Has c "disabled" => Bool -> Props c handler
disabled = prop "disabled"

-- Platform: Android
--selectionColor :: Has c "selectionColor" => Color -> Props c handler
--selectionColor = prop "selectionColor"

-- Platform: Android
textBreakStrategy :: Has c "textBreakStrategy" => TextBreakStrategy -> Props c handler
textBreakStrategy = prop "textBreakStrategy"

-- Platform: IOS
adjustsFontSizeToFit :: Has c "adjustsFontSizeToFit" => Bool -> Props c handler
adjustsFontSizeToFit = prop "adjustsFontSizeToFit"

-- Platform: IOS
minimumFontScale :: Has c "minimumFontScale" => Double -> Props c handler
minimumFontScale = prop "minimumFontScale"

-- Platform: IOS
suppressHighlighting :: Has c "suppressHighlighting" => Bool -> Props c handler
suppressHighlighting = prop "suppressHighlighting"



instance Has Text "selectable"
instance Has Text "accessible"
instance Has Text "ellipsizeMode"
instance Has Text "nativeID"
instance Has Text "numberOfLines"
instance Has Text "onLayout"
instance Has Text "onLongPress"
instance Has Text "onPress"
instance Has Text "pressRetentionOffset"
instance Has Text "allowFontScaling"
instance Has Text "style"
instance Has Text "testID"
instance Has Text "disabled"
instance Has Text "selectionColor"
instance Has Text "textBreakStrategy"
instance Has Text "adjustsFontSizeToFit"
instance Has Text "minimumFontScale"
instance Has Text "suppressHighlighting"


-- TextStyleProps:

instance Has Text "textShadowOffset"
instance Has Text "color"
instance Has Text "fontSize"
instance Has Text "fontStyle"
instance Has Text "fontWeight"
instance Has Text "lineHeight"
instance Has Text "textAlign"
instance Has Text "textDecorationLine"
instance Has Text "textShadowColor"
instance Has Text "fontFamily"
instance Has Text "textShadowRadius"
instance Has Text "includeFontPadding"
instance Has Text "textAlignVertical"
instance Has Text "fontVariant"
instance Has Text "letterSpacing"
instance Has Text "textDecorationColor"
instance Has Text "textDecorationStyle"
instance Has Text "writingDirection"

-- ViewStyleProps:

instance Has Text "borderRightColor"
instance Has Text "backfaceVisibility"
instance Has Text "borderBottomColor"
instance Has Text "borderBottomEndRadius"
instance Has Text "borderBottomLeftRadius"
instance Has Text "borderBottomRightRadius"
instance Has Text "borderBottomStartRadius"
--instance Has Text "borderBottomWidth"
instance Has Text "borderColor"
instance Has Text "borderEndColor"
--instance Has Text "borderLeftWidth"
instance Has Text "borderRadius"
instance Has Text "backgroundColor"
--instance Has Text "borderRightWidth"
instance Has Text "borderStartColor"
instance Has Text "borderStyle"
instance Has Text "borderTopColor"
instance Has Text "borderTopEndRadius"
instance Has Text "borderTopLeftRadius"
instance Has Text "borderTopRightRadius"
instance Has Text "borderTopStartRadius"
--instance Has Text "borderTopWidth"
--instance Has Text "borderWidth"
instance Has Text "opacity"
instance Has Text "elevation"

-- LayoutStyleProps:

instance Has Text "marginHorizontal"
instance Has Text "alignContent"
instance Has Text "alignSelf"
instance Has Text "aspectRatio"
instance Has Text "borderBottomWidth"
instance Has Text "borderEndWidth"
instance Has Text "borderLeftWidth"
instance Has Text "borderRightWidth"
instance Has Text "borderStartWidth"
instance Has Text "borderTopWidth"
instance Has Text "borderWidth"
instance Has Text "bottom"
instance Has Text "display"
instance Has Text "end"
instance Has Text "flex"
instance Has Text "flexBasis"
instance Has Text "flexDirection"
instance Has Text "flexGrow"
instance Has Text "flexShrink"
instance Has Text "flexWrap"
instance Has Text "height"
instance Has Text "justifyContent"
instance Has Text "left"
instance Has Text "margin"
instance Has Text "marginBottom"
instance Has Text "marginEnd"
instance Has Text "alignItems"
instance Has Text "marginLeft"
instance Has Text "marginRight"
instance Has Text "marginStart"
instance Has Text "marginTop"
instance Has Text "marginVertical"
instance Has Text "maxHeight"
instance Has Text "maxWidth"
instance Has Text "minHeight"
instance Has Text "minWidth"
instance Has Text "overflow"
instance Has Text "padding"
instance Has Text "paddingBottom"
instance Has Text "paddingEnd"
instance Has Text "paddingHorizontal"
instance Has Text "paddingLeft"
instance Has Text "paddingRight"
instance Has Text "paddingStart"
instance Has Text "paddingTop"
instance Has Text "paddingVertical"
instance Has Text "position"
instance Has Text "right"
instance Has Text "start"
instance Has Text "top"
instance Has Text "width"
instance Has Text "zIndex"
instance Has Text "direction"

-- ShadowStyleProps:

instance Has Text "shadowColor"
instance Has Text "shadowOffset"
instance Has Text "shadowOpacity"
instance Has Text "shadowRadius"

-- TransformsStyleProps:

instance Has Text "transform"