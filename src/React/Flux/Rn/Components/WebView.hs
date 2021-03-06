{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE DeriveGeneric         #-}
{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE RankNTypes            #-}
module React.Flux.Rn.Components.WebView (
    module React.Flux.Rn.Components.WebView,
    module React.Flux.Rn.Props.ViewProps,
    module React.Flux.Rn.Types.DataDetectorTypes,
    module React.Flux.Rn.Types.DecelerationRate,
    module React.Flux.Rn.Types.Inset,
    module React.Flux.Rn.Types.Method
) where

import Data.Aeson                 ((.:), FromJSON (..), ToJSON (..), withObject)
import Data.Map (Map)
import Data.Typeable                 (Typeable)
import GHC.Generics               (Generic)
import GHCJS.Marshal              (FromJSVal (..), ToJSVal (..))
import GHCJS.Types                (JSVal)
import Network.URI                (URI)
import Prelude                    (Show, String, fmap, (.), Maybe, Bool, (<$>), ($), pure)
import React.Flux                    (ReactElementM, foreign_)
import React.Flux.Internal        (ReactViewRef (..))
import React.Flux.Rn.Events          (EventHandlerType, on0, on1, ret1, view0, fromNativeJSON)
import React.Flux.Rn.Properties      (Has, Props, prop, props)
import React.Flux.Rn.Props.ViewProps hiding (AccessibilityTrait)
import React.Flux.Rn.Types.DataDetectorTypes (DataDetectorTypes)
import React.Flux.Rn.Types.DecelerationRate
import React.Flux.Rn.Types.Inset
import React.Flux.Rn.Types.Method


data WebView
webView :: [Props WebView handler] -> ReactElementM handler a -> ReactElementM handler a
webView = foreign_ "WebView" . fmap props


data MixedContentMode = Never | Always | Compatibility
  deriving (Show, Generic)
instance ToJSVal MixedContentMode where
  toJSVal Never         = toJSVal ("never" :: String)
  toJSVal Always        = toJSVal ("always" :: String)
  toJSVal Compatibility = toJSVal ("compatibility" :: String)

newtype OnMessage = OnMessage {
    data_ :: String
} deriving (Show, Generic)
instance FromJSON OnMessage where
  parseJSON = withObject "OnMessage" $ \v -> OnMessage <$> v .: "data"
instance FromJSVal OnMessage where fromJSVal = fromNativeJSON

data URISource = URISource {
  uri     :: URI,
  method  :: Maybe Method,
  headers :: Map String String,
  body    :: Maybe String
} deriving (Show,Generic)
instance ToJSON URISource
instance ToJSVal URISource where
  toJSVal = toJSVal . toJSON

data StaticSource = StaticSource {
    html    :: String,
    baseUrl :: URI
  } deriving (Show,Generic)
instance ToJSON StaticSource
instance ToJSVal StaticSource where
  toJSVal = toJSVal . toJSON

type JSRequireRef = JSVal

data Source = SourceURI URISource | SourceStatic StaticSource | SourceResource JSRequireRef
  deriving (Generic)
instance ToJSVal Source where
  toJSVal (SourceURI x)      = toJSVal $ toJSON x
  toJSVal (SourceStatic x)   = toJSVal $ toJSON x
  toJSVal (SourceResource x) = pure x


source :: Has c "source" => Source -> Props c handler
source = prop "source"

automaticallyAdjustContentInsets :: Has c "automaticallyAdjustContentInsets" => Bool -> Props c handler
automaticallyAdjustContentInsets = prop "automaticallyAdjustContentInsets"

type JavaScript = String

injectJavaScript :: Has c "injectJavaScript" => (JavaScript -> EventHandlerType handler) -> Props c handler
injectJavaScript = on1 "injectJavaScript"

injectedJavaScript :: Has c "injectedJavaScript" => JavaScript -> Props c handler
injectedJavaScript = prop "injectedJavaScript"

mediaPlaybackRequiresUserAction :: Has c "mediaPlaybackRequiresUserAction" => Bool -> Props c handler
mediaPlaybackRequiresUserAction = prop "mediaPlaybackRequiresUserAction"

-- TODO: ?
--nativeConfig :: Has c "nativeConfig" => NativeConfig -> Props c handler
--nativeConfig = prop "nativeConfig"

onError :: Has c "onError" => EventHandlerType handler -> Props c handler
onError = on0 "onError"

onLoad :: Has c "onLoad" => EventHandlerType handler -> Props c handler
onLoad = on0 "onLoad"

onLoadEnd :: Has c "onLoadEnd" => EventHandlerType handler -> Props c handler
onLoadEnd = on0 "onLoadEnd"

onLoadStart :: Has c "onLoadStart" => EventHandlerType handler -> Props c handler
onLoadStart = on0 "onLoadStart"

onMessage :: Has c "onMessage" => (OnMessage -> EventHandlerType handler) -> Props c handler
onMessage = on1 "onMessage"

onNavigationStateChange :: Has c "onNavigationStateChange" => EventHandlerType handler -> Props c handler
onNavigationStateChange = on0 "onNavigationStateChange"

renderError :: (Has c "renderError", Typeable props) => ReactViewRef props -> Props c handler
renderError = view0 "renderError"

renderLoading :: (Has c "renderLoading", Typeable props) => ReactViewRef props -> Props c handler
renderLoading = view0 "renderLoading"

scalesPageToFit :: Has c "scalesPageToFit" => Bool -> Props c handler
scalesPageToFit = prop "scalesPageToFit"

-- Platform: IOS
onShouldStartLoadWithRequest :: Has c "onShouldStartLoadWithRequest" => (() -> Bool) -> Props c handler
onShouldStartLoadWithRequest = ret1 "onShouldStartLoadWithRequest"

startInLoadingState :: Has c "startInLoadingState" => Bool -> Props c handler
startInLoadingState = prop "startInLoadingState"

-- Platform: IOS
decelerationRate :: Has c "decelerationRate" => DecelerationRate -> Props c handler
decelerationRate = prop "decelerationRate"

-- Platform: Android
domStorageEnabled :: Has c "domStorageEnabled" => Bool -> Props c handler
domStorageEnabled = prop "domStorageEnabled"

-- Platform: Android
javaScriptEnabled :: Has c "javaScriptEnabled" => Bool -> Props c handler
javaScriptEnabled = prop "javaScriptEnabled"

-- Platform: Android
mixedContentMode :: Has c "mixedContentMode" => MixedContentMode -> Props c handler
mixedContentMode = prop "mixedContentMode"

-- Platform: Android
thirdPartyCookiesEnabled :: Has c "thirdPartyCookiesEnabled" => Bool -> Props c handler
thirdPartyCookiesEnabled = prop "thirdPartyCookiesEnabled"

-- Platform: Android
userAgent :: Has c "userAgent" => String -> Props c handler
userAgent = prop "userAgent"

-- Platform: IOS
allowsInlineMediaPlayback :: Has c "allowsInlineMediaPlayback" => Bool -> Props c handler
allowsInlineMediaPlayback = prop "allowsInlineMediaPlayback"

-- Platform: IOS
bounces :: Has c "bounces" => Bool -> Props c handler
bounces = prop "bounces"

-- Platform: IOS
contentInset :: Has c "contentInset" => Inset -> Props c handler
contentInset = prop "contentInset"

-- Platform: IOS
dataDetectorTypes :: Has c "dataDetectorTypes" => DataDetectorTypes -> Props c handler
dataDetectorTypes = prop "dataDetectorTypes"

-- Platform: IOS
scrollEnabled :: Has c "scrollEnabled" => Bool -> Props c handler
scrollEnabled = prop "scrollEnabled"



instance Has WebView "source"
instance Has WebView "automaticallyAdjustContentInsets"
instance Has WebView "injectJavaScript"
instance Has WebView "injectedJavaScript"
instance Has WebView "mediaPlaybackRequiresUserAction"
instance Has WebView "onError"
instance Has WebView "onLoad"
instance Has WebView "onLoadEnd"
instance Has WebView "onLoadStart"
instance Has WebView "onMessage"
instance Has WebView "onNavigationStateChange"
instance Has WebView "renderError"
instance Has WebView "renderLoading"
instance Has WebView "scalesPageToFit"
instance Has WebView "onShouldStartLoadWithRequest"
instance Has WebView "startInLoadingState"
instance Has WebView "decelerationRate"
instance Has WebView "domStorageEnabled"
instance Has WebView "javaScriptEnabled"
instance Has WebView "mixedContentMode"
instance Has WebView "thirdPartyCookiesEnabled"
instance Has WebView "userAgent"
instance Has WebView "allowsInlineMediaPlayback"
instance Has WebView "bounces"
instance Has WebView "contentInset"
instance Has WebView "dataDetectorTypes"
instance Has WebView "scrollEnabled"

-- ViewProps:

instance Has WebView "onStartShouldSetResponder"
instance Has WebView "accessibilityLabel"
instance Has WebView "hitSlop"
instance Has WebView "nativeID"
instance Has WebView "onAccessibilityTap"
instance Has WebView "onLayout"
instance Has WebView "onMagicTap"
instance Has WebView "onMoveShouldSetResponder"
instance Has WebView "onMoveShouldSetResponderCapture"
instance Has WebView "onResponderGrant"
instance Has WebView "onResponderMove"
instance Has WebView "onResponderReject"
instance Has WebView "onResponderRelease"
instance Has WebView "onResponderTerminate"
instance Has WebView "onResponderTerminationRequest"
instance Has WebView "accessible"
instance Has WebView "onStartShouldSetResponderCapture"
instance Has WebView "pointerEvents"
instance Has WebView "removeClippedSubviews"
instance Has WebView "style"
instance Has WebView "testID"
instance Has WebView "accessibilityComponentType"
instance Has WebView "accessibilityLiveRegion"
instance Has WebView "collapsable"
instance Has WebView "importantForAccessibility"
instance Has WebView "needsOffscreenAlphaCompositing"
instance Has WebView "renderToHardwareTextureAndroid"
instance Has WebView "accessibilityTraits"
instance Has WebView "accessibilityViewIsModal"
instance Has WebView "shouldRasterizeIOS"


-- TODO: Methods
