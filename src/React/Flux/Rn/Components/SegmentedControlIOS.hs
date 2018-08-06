{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TypeApplications  #-}
module React.Flux.Rn.Components.SegmentedControlIOS (
    module React.Flux.Rn.Components.SegmentedControlIOS,
    Color(..), OnChange(OnChange),
    ViewProps.AccessibilityComponentTypes(..),
    ViewProps.AccessibilityLiveRegion(..),
    ViewProps.AccessibilityTraits(..),
    ViewProps.ImportantForAccessibility(..),
    ViewProps.Inset(Inset),
    ViewProps.OnLayout(OnLayout),
    ViewProps.PointerEvents(..),
    ViewProps.SyntheticTouchEvent(SyntheticTouchEvent)
) where

import           GHCJS.Marshal                 (FromJSVal)
import           Numeric.Natural               (Natural)
import           Prelude                       (Bool, String)
import           Prelude                       (fmap)
import           Prelude                       ((.))
import           React.Flux                    (ReactElementM, foreign_)
import           React.Flux.Rn.Events          (EventHandlerType, on1)
import           React.Flux.Rn.Properties      (Props, prop, props)
import qualified React.Flux.Rn.Props.ViewProps as ViewProps
import           React.Flux.Rn.Types           (Color (..), OnChange (OnChange))

data SegmentedControlIOS
segmentedControlIOS :: [Props SegmentedControlIOS handler] -> ReactElementM handler a -> ReactElementM handler a
segmentedControlIOS = foreign_ "SegmentedControlIOS" . fmap props

enabled :: Bool -> Props SegmentedControlIOS handler
enabled = prop "enabled"

momentary :: Bool -> Props SegmentedControlIOS handler
momentary = prop "momentary"

onChange :: (OnChange -> EventHandlerType handler) -> Props SegmentedControlIOS handler
onChange = on1 "onChange"

onValueChange :: FromJSVal value => (value -> EventHandlerType handler) -> Props SegmentedControlIOS handler
onValueChange = on1 "onValueChange"

selectedIndex :: Natural -> Props SegmentedControlIOS handler
selectedIndex = prop "selectedIndex"

tintColor :: Color -> Props SegmentedControlIOS handler
tintColor = prop "tintColor"

values :: [String] -> Props SegmentedControlIOS handler
values = prop "values"

-- ViewProps:

onStartShouldSetResponder        = ViewProps.onStartShouldSetResponder @SegmentedControlIOS
accessibilityLabel               = ViewProps.accessibilityLabel @SegmentedControlIOS
hitSlop                          = ViewProps.hitSlop @SegmentedControlIOS
nativeID                         = ViewProps.nativeID @SegmentedControlIOS
onAccessibilityTap               = ViewProps.onAccessibilityTap @SegmentedControlIOS
onLayout                         = ViewProps.onLayout @SegmentedControlIOS
onMagicTap                       = ViewProps.onMagicTap @SegmentedControlIOS
onMoveShouldSetResponder         = ViewProps.onMoveShouldSetResponder @SegmentedControlIOS
onMoveShouldSetResponderCapture  = ViewProps.onMoveShouldSetResponderCapture @SegmentedControlIOS
onResponderGrant                 = ViewProps.onResponderGrant @SegmentedControlIOS
onResponderMove                  = ViewProps.onResponderMove @SegmentedControlIOS
onResponderReject                = ViewProps.onResponderReject @SegmentedControlIOS
onResponderRelease               = ViewProps.onResponderRelease @SegmentedControlIOS
onResponderTerminate             = ViewProps.onResponderTerminate @SegmentedControlIOS
onResponderTerminationRequest    = ViewProps.onResponderTerminationRequest @SegmentedControlIOS
accessible                       = ViewProps.accessible @SegmentedControlIOS
onStartShouldSetResponderCapture = ViewProps.onStartShouldSetResponderCapture @SegmentedControlIOS
pointerEvents                    = ViewProps.pointerEvents @SegmentedControlIOS
removeClippedSubviews            = ViewProps.removeClippedSubviews @SegmentedControlIOS
style                            = ViewProps.style @SegmentedControlIOS
testID                           = ViewProps.testID @SegmentedControlIOS
accessibilityComponentType       = ViewProps.accessibilityComponentType @SegmentedControlIOS
accessibilityLiveRegion          = ViewProps.accessibilityLiveRegion @SegmentedControlIOS
collapsable                      = ViewProps.collapsable @SegmentedControlIOS
importantForAccessibility        = ViewProps.importantForAccessibility @SegmentedControlIOS
needsOffscreenAlphaCompositing   = ViewProps.needsOffscreenAlphaCompositing @SegmentedControlIOS
renderToHardwareTextureAndroid   = ViewProps.renderToHardwareTextureAndroid @SegmentedControlIOS
accessibilityTraits              = ViewProps.accessibilityTraits @SegmentedControlIOS
accessibilityViewIsModal         = ViewProps.accessibilityViewIsModal @SegmentedControlIOS
shouldRasterizeIOS               = ViewProps.shouldRasterizeIOS @SegmentedControlIOS


-- TODO: methods
