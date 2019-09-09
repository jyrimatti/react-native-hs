{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE NoImplicitPrelude     #-}
{-# LANGUAGE OverloadedStrings     #-}
module React.Flux.Rn.Components.MaskedViewIOS (
    module React.Flux.Rn.Components.MaskedViewIOS,
    ReactViewRef,
    ViewProps.AccessibilityComponentTypes(..),
    ViewProps.AccessibilityLiveRegion(..),
    ViewProps.AccessibilityTraits(..),
    ViewProps.ImportantForAccessibility(..),
    ViewProps.Inset(Inset),
    ViewProps.OnLayout(OnLayout),
    ViewProps.PointerEvents(..),
    ViewProps.SyntheticTouchEvent(SyntheticTouchEvent)
) where

import           Data.Typeable                 (Typeable)
import           Prelude                       (fmap, (.))
import           React.Flux                    (ReactElementM, foreign_)
import           React.Flux.Rn.Events          (view0)
import           React.Flux.Rn.Properties      (Has, Props, props)
import qualified React.Flux.Rn.Props.ViewProps as ViewProps
import           React.Flux.Rn.Types           (ReactViewRef)



data MaskedViewIOS
maskedViewIOS :: [Props MaskedViewIOS handler] -> ReactElementM handler a -> ReactElementM handler a
maskedViewIOS = foreign_ "MaskedViewIOS" . fmap props



-- Required
maskElement :: (Has c "maskElement", Typeable props) => ReactViewRef props -> Props c handler
maskElement = view0 "maskElement"



instance Has MaskedViewIOS "maskElement"

-- ViewProps:

instance Has MaskedViewIOS "onStartShouldSetResponder"
instance Has MaskedViewIOS "accessibilityLabel"
instance Has MaskedViewIOS "hitSlop"
instance Has MaskedViewIOS "nativeID"
instance Has MaskedViewIOS "onAccessibilityTap"
instance Has MaskedViewIOS "onLayout"
instance Has MaskedViewIOS "onMagicTap"
instance Has MaskedViewIOS "onMoveShouldSetResponder"
instance Has MaskedViewIOS "onMoveShouldSetResponderCapture"
instance Has MaskedViewIOS "onResponderGrant"
instance Has MaskedViewIOS "onResponderMove"
instance Has MaskedViewIOS "onResponderReject"
instance Has MaskedViewIOS "onResponderRelease"
instance Has MaskedViewIOS "onResponderTerminate"
instance Has MaskedViewIOS "onResponderTerminationRequest"
instance Has MaskedViewIOS "accessible"
instance Has MaskedViewIOS "onStartShouldSetResponderCapture"
instance Has MaskedViewIOS "pointerEvents"
instance Has MaskedViewIOS "removeClippedSubviews"
instance Has MaskedViewIOS "style"
instance Has MaskedViewIOS "testID"
instance Has MaskedViewIOS "accessibilityComponentType"
instance Has MaskedViewIOS "accessibilityLiveRegion"
instance Has MaskedViewIOS "collapsable"
instance Has MaskedViewIOS "importantForAccessibility"
instance Has MaskedViewIOS "needsOffscreenAlphaCompositing"
instance Has MaskedViewIOS "renderToHardwareTextureAndroid"
instance Has MaskedViewIOS "accessibilityTraits"
instance Has MaskedViewIOS "accessibilityViewIsModal"
instance Has MaskedViewIOS "shouldRasterizeIOS"

