{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE NoImplicitPrelude     #-}
{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE RankNTypes            #-}
module React.Flux.Rn.Components.Text (
    module React.Flux.Rn.Components.Text,
    Color(..), EllipsizeMode(..), Inset(Inset),
    OnLayout (OnLayout), OnLayoutVals(OnLayoutVals),
    TextBreakStrategy(..),
    CommonProps.selectionColor,
    CommonProps.style
) where

import           Numeric.Natural                 (Natural)
import           Prelude                         (Bool, Double, String, ($))
import           Prelude                         (fmap)
import           Prelude                         ((.))
import           React.Flux                      (ReactElementM, foreign_)
import           React.Flux.Rn.Events            (EventHandlerType, on0, on1)
import           React.Flux.Rn.Properties        (Has, Props, Styles,
                                                  nestedProp, prop, props)
import qualified React.Flux.Rn.Props.CommonProps as CommonProps
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
