{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE NoImplicitPrelude     #-}
{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE RankNTypes            #-}
{-# LANGUAGE TypeApplications      #-}
module React.Flux.Rn.Components.TextInput (
    module React.Flux.Rn.Components.TextInput,
    Color(..), KeyboardType(..),
    OnContentSizeChange(OnContentSizeChange), DataDetectorTypes(..), KeyboardAppearance(..), OnKeyPress(OnKeyPress), DocumentSelectionState,
    ReturnKeyType(..), Selection(Selection), TextBreakStrategy(..), ClearButtonMode(..), OnScroll(OnScroll), OnSelectionChange(OnSelectionChange), AutoCapitalize(..),
    ViewProps.AccessibilityComponentTypes(..),
    ViewProps.AccessibilityLiveRegion(..),
    ViewProps.AccessibilityTraits(..),
    ViewProps.ImportantForAccessibility(..),
    ViewProps.Inset(Inset),
    ViewProps.OnLayout(OnLayout),
    ViewProps.PointerEvents(..),
    ViewProps.SyntheticTouchEvent(SyntheticTouchEvent),
    CommonProps.selectionColor,
    CommonProps.style
) where

import           Numeric.Natural                 (Natural)
import           Prelude                         (Bool, Int, String)
import           Prelude                         (fmap)
import           Prelude                         ((.))
import           React.Flux                      (ReactElementM, foreign_)
import           React.Flux.Rn.Events            (EventHandlerType, on0, on1)
import           React.Flux.Rn.Properties        (Has, Props, Styles,
                                                  nestedProp, prop, props)
import qualified React.Flux.Rn.Props.CommonProps as CommonProps
import qualified React.Flux.Rn.Props.ViewProps   as ViewProps
import           React.Flux.Rn.Types             (AutoCapitalize (..),
                                                  ClearButtonMode (..),
                                                  Color (..),
                                                  DataDetectorTypes (..),
                                                  DocumentSelectionState,
                                                  KeyboardAppearance (..),
                                                  KeyboardType (..),
                                                  OnContentSizeChange (OnContentSizeChange),
                                                  OnKeyPress (OnKeyPress),
                                                  OnScroll (OnScroll),
                                                  OnSelectionChange (OnSelectionChange),
                                                  ReturnKeyType (..),
                                                  Selection (Selection),
                                                  TextBreakStrategy (..))



data TextInput
textInput :: [Props TextInput handler] -> ReactElementM handler a -> ReactElementM handler a
textInput = foreign_ "TextInput" . fmap props



placeholderTextColor :: Has c "placeholderTextColor" => Color -> Props c handler
placeholderTextColor = prop "placeholderTextColor"

allowFontScaling :: Has c "allowFontScaling" => Bool -> Props c handler
allowFontScaling = prop "allowFontScaling"

autoCorrect :: Has c "autoCorrect" => Bool -> Props c handler
autoCorrect = prop "autoCorrect"

autoFocus :: Has c "autoFocus" => Bool -> Props c handler
autoFocus = prop "autoFocus"

blurOnSubmit :: Has c "blurOnSubmit" => Bool -> Props c handler
blurOnSubmit = prop "blurOnSubmit"

caretHidden :: Has c "caretHidden" => Bool -> Props c handler
caretHidden = prop "caretHidden"

defaultValue :: Has c "defaultValue" => String -> Props c handler
defaultValue = prop "defaultValue"

editable :: Has c "editable" => Bool -> Props c handler
editable = prop "editable"

keyboardType :: Has c "keyboardType" => KeyboardType -> Props c handler
keyboardType = prop "keyboardType"

maxHeight :: Has c "maxHeight" => Natural -> Props c handler
maxHeight = prop "maxHeight"

maxLength :: Has c "maxLength" => Natural -> Props c handler
maxLength = prop "maxLength"

multiline :: Has c "multiline" => Bool -> Props c handler
multiline = prop "multiline"

onBlur :: Has c "onBlur" => EventHandlerType handler -> Props c handler
onBlur = on0 "onBlur"

onChange :: Has c "onChange" => EventHandlerType handler -> Props c handler
onChange = on0 "onChange"

onChangeText :: Has c "onChangeText" => (String -> EventHandlerType handler) -> Props c handler
onChangeText = on1 "onChangeText"

onContentSizeChange :: Has c "onContentSizeChange" => (OnContentSizeChange -> EventHandlerType handler) -> Props c handler
onContentSizeChange = on1 "onContentSizeChange"

onEndEditing :: Has c "onEndEditing" => EventHandlerType handler -> Props c handler
onEndEditing = on0 "onEndEditing"

onFocus :: Has c "onFocus" => EventHandlerType handler -> Props c handler
onFocus = on0 "onFocus"

onScroll :: Has c "onScroll" => (OnScroll -> EventHandlerType handler) -> Props c handler
onScroll = on1 "onScroll"

onSelectionChange :: Has c "onSelectionChange" => (OnSelectionChange -> EventHandlerType handler) -> Props c handler
onSelectionChange = on1 "onSelectionChange"

onSubmitEditing :: Has c "onSubmitEditing" => EventHandlerType handler -> Props c handler
onSubmitEditing = on0 "onSubmitEditing"

placeholder :: Has c "placeholder" => String -> Props c handler
placeholder = prop "placeholder"

autoCapitalize :: Has c "autoCapitalize" => AutoCapitalize -> Props c handler
autoCapitalize = prop "autoCapitalize"

returnKeyType :: Has c "returnKeyType" => ReturnKeyType -> Props c handler
returnKeyType = prop "returnKeyType"

secureTextEntry :: Has c "secureTextEntry" => Bool -> Props c handler
secureTextEntry = prop "secureTextEntry"

selectTextOnFocus :: Has c "selectTextOnFocus" => Bool -> Props c handler
selectTextOnFocus = prop "selectTextOnFocus"

selection :: Has c "selection" => Selection -> Props c handler
selection = prop "selection"

--selectionColor :: Has c "selectionColor" => Color -> Props c handler
--selectionColor = prop "selectionColor"

--style :: Has c "style" => [Styles TextInput handler] -> Props c handler
--style = nestedProp "style"

value :: Has c "value" => String -> Props c handler
value = prop "value"

-- Platform: Android
autoGrow :: Has c "autoGrow" => Bool -> Props c handler
autoGrow = prop "autoGrow"

-- Platform: Android
disableFullscreenUI :: Has c "disableFullscreenUI" => Bool -> Props c handler
disableFullscreenUI = prop "disableFullscreenUI"

-- Platform: Android
inlineImageLeft :: Has c "inlineImageLeft" => String -> Props c handler
inlineImageLeft = prop "inlineImageLeft"

-- Platform: Android
inlineImagePadding :: Has c "inlineImagePadding" => Int -> Props c handler
inlineImagePadding = prop "inlineImagePadding"

-- Platform: Android
numberOfLines :: Has c "numberOfLines" => Natural -> Props c handler
numberOfLines = prop "numberOfLines"

-- Platform: Android
returnKeyLabel :: Has c "returnKeyLabel" => String -> Props c handler
returnKeyLabel = prop "returnKeyLabel"

-- Platform: Android
textBreakStrategy :: Has c "textBreakStrategy" => TextBreakStrategy -> Props c handler
textBreakStrategy = prop "textBreakStrategy"

-- Platform: Android
underlineColorAndroid :: Has c "underlineColorAndroid" => Color -> Props c handler
underlineColorAndroid = prop "underlineColorAndroid"

-- Platform: IOS
clearButtonMode :: Has c "clearButtonMode" => ClearButtonMode -> Props c handler
clearButtonMode = prop "clearButtonMode"

-- Platform: IOS
clearTextOnFocus :: Has c "clearTextOnFocus" => Bool -> Props c handler
clearTextOnFocus = prop "clearTextOnFocus"

-- Platform: IOS
dataDetectorTypes :: Has c "dataDetectorTypes" => DataDetectorTypes -> Props c handler
dataDetectorTypes = prop "dataDetectorTypes"

-- Platform: IOS
enablesReturnKeyAutomatically :: Has c "enablesReturnKeyAutomatically" => Bool -> Props c handler
enablesReturnKeyAutomatically = prop "enablesReturnKeyAutomatically"

-- Platform: IOS
keyboardAppearance :: Has c "keyboardAppearance" => KeyboardAppearance -> Props c handler
keyboardAppearance = prop "keyboardAppearance"

-- Platform: IOS
onKeyPress :: Has c "onKeyPress" => (OnKeyPress -> EventHandlerType handler) -> Props c handler
onKeyPress = on1 "onKeyPress"

-- Platform: IOS
selectionState :: Has c "selectionState" => DocumentSelectionState -> Props c handler
selectionState = prop "selectionState"

-- Platform: IOS
spellCheck :: Has c "spellCheck" => Bool -> Props c handler
spellCheck = prop "spellCheck"



instance Has TextInput "placeholderTextColor"
instance Has TextInput "allowFontScaling"
instance Has TextInput "autoCorrect"
instance Has TextInput "autoFocus"
instance Has TextInput "blurOnSubmit"
instance Has TextInput "caretHidden"
instance Has TextInput "defaultValue"
instance Has TextInput "editable"
instance Has TextInput "keyboardType"
instance Has TextInput "maxHeight"
instance Has TextInput "maxLength"
instance Has TextInput "multiline"
instance Has TextInput "onBlur"
instance Has TextInput "onChange"
instance Has TextInput "onChangeText"
instance Has TextInput "onContentSizeChange"
instance Has TextInput "onEndEditing"
instance Has TextInput "onFocus"
instance Has TextInput "onScroll"
instance Has TextInput "onSelectionChange"
instance Has TextInput "onSubmitEditing"
instance Has TextInput "placeholder"
instance Has TextInput "autoCapitalize"
instance Has TextInput "returnKeyType"
instance Has TextInput "secureTextEntry"
instance Has TextInput "selectTextOnFocus"
instance Has TextInput "selection"
instance Has TextInput "selectionColor"
--instance Has TextInput "style"
instance Has TextInput "value"
instance Has TextInput "autoGrow"
instance Has TextInput "disableFullscreenUI"
instance Has TextInput "inlineImageLeft"
instance Has TextInput "inlineImagePadding"
instance Has TextInput "numberOfLines"
instance Has TextInput "returnKeyLabel"
instance Has TextInput "textBreakStrategy"
instance Has TextInput "underlineColorAndroid"
instance Has TextInput "clearButtonMode"
instance Has TextInput "clearTextOnFocus"
instance Has TextInput "dataDetectorTypes"
instance Has TextInput "enablesReturnKeyAutomatically"
instance Has TextInput "keyboardAppearance"
instance Has TextInput "onKeyPress"
instance Has TextInput "selectionState"
instance Has TextInput "spellCheck"

-- ViewProps:

instance Has TextInput "onStartShouldSetResponder"
instance Has TextInput "accessibilityLabel"
instance Has TextInput "hitSlop"
instance Has TextInput "nativeID"
instance Has TextInput "onAccessibilityTap"
instance Has TextInput "onLayout"
instance Has TextInput "onMagicTap"
instance Has TextInput "onMoveShouldSetResponder"
instance Has TextInput "onMoveShouldSetResponderCapture"
instance Has TextInput "onResponderGrant"
instance Has TextInput "onResponderMove"
instance Has TextInput "onResponderReject"
instance Has TextInput "onResponderRelease"
instance Has TextInput "onResponderTerminate"
instance Has TextInput "onResponderTerminationRequest"
instance Has TextInput "accessible"
instance Has TextInput "onStartShouldSetResponderCapture"
instance Has TextInput "pointerEvents"
instance Has TextInput "removeClippedSubviews"
instance Has TextInput "style"
instance Has TextInput "testID"
instance Has TextInput "accessibilityComponentType"
instance Has TextInput "accessibilityLiveRegion"
instance Has TextInput "collapsable"
instance Has TextInput "importantForAccessibility"
instance Has TextInput "needsOffscreenAlphaCompositing"
instance Has TextInput "renderToHardwareTextureAndroid"
instance Has TextInput "accessibilityTraits"
instance Has TextInput "accessibilityViewIsModal"
instance Has TextInput "shouldRasterizeIOS"


-- TODO: methods
