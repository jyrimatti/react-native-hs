{-# LANGUAGE CPP               #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
module React.Flux.Rn.Events (
  module React.Flux.Rn.Events,
  EventHandlerType,
  ReactViewRef
) where

import Control.DeepSeq (NFData)
import Data.Aeson               (FromJSON, parseJSON)
import Data.Aeson.Types         (parseMaybe)
import Data.Maybe               (fromMaybe)
import Data.Typeable            (Typeable)
import GHC.Stack (HasCallStack)
import GHCJS.Marshal            (FromJSVal (..), ToJSVal (..))
import GHCJS.Types              (JSString, JSVal, IsJSVal, jsval)
import JavaScript.Array         (index)
import Prelude                  (IO, Maybe, String, const, error,
                                           print, pure, undefined, ($), (<$>), return,
                                           (<*>), Show(..),Eq(..), Bool(True))
import React.Flux               (EventHandlerType)
import React.Flux.Internal      (HandlerArg (..),
                                           PropertyOrHandler_ (..),
                                           ReactViewRef)
import React.Flux.Rn.Properties (Props, prop_)
import React.Flux.Rn.Util

{-# ANN module ("HLint: ignore Use camelCase" :: String) #-}

newtype This component = This JSString
  deriving (Show, NFData, Eq, ToJSVal)

on0 :: HasCallStack => JSString -> EventHandlerType handler -> Props component handler
on0 ev f = prop_ $ CallbackPropertyWithArgumentArray ev $ const $ pure f

on1 :: (HasCallStack, FromJSVal arg) => JSString -> (arg -> EventHandlerType handler) -> Props component handler
on1 ev f = prop_ $ CallbackPropertyWithSingleArgument ev $ \(HandlerArg jsval) -> f <$> from jsval

on2 :: (HasCallStack, FromJSVal arg1, FromJSVal arg2) => JSString -> (arg1 -> arg2 -> EventHandlerType handler) -> Props component handler
on2 ev f = prop_ $ CallbackPropertyWithArgumentArray ev $ \jsarray -> f <$> from (index 0 jsarray) <*> from (index 1 jsarray)

on3 :: (HasCallStack, FromJSVal arg1, FromJSVal arg2, FromJSVal arg3) => JSString -> (arg1 -> arg2 -> arg3 -> EventHandlerType handler) -> Props component handler
on3 ev f = prop_ $ CallbackPropertyWithArgumentArray ev $ \jsarray -> f <$> from (index 0 jsarray) <*> from (index 1 jsarray) <*> from (index 2 jsarray)

on4 :: (HasCallStack, FromJSVal arg1, FromJSVal arg2, FromJSVal arg3, FromJSVal arg4) => JSString -> (arg1 -> arg2 -> arg3 -> arg4 -> EventHandlerType handler) -> Props component handler
on4 ev f = prop_ $ CallbackPropertyWithArgumentArray ev $ \jsarray -> f <$> from (index 0 jsarray) <*> from (index 1 jsarray) <*> from (index 2 jsarray) <*> from (index 3 jsarray)

ret1 :: (HasCallStack, FromJSVal arg, ToJSVal ret) => JSString -> (arg -> ret) -> Props component handler
ret1 ev f = undefined -- TODO: ?

ret2 :: (HasCallStack, FromJSVal arg1, FromJSVal arg2, ToJSVal ret) => JSString -> (arg1 -> arg2 -> ret) -> Props component handler
ret2 ev f = undefined -- TODO: ?

view0 :: (HasCallStack, Typeable props) => JSString -> ReactViewRef props -> Props component handler
view0 ev f = prop_ $ CallbackPropertyReturningView ev undefined f -- TODO: ?

view1 :: (HasCallStack, Typeable props) => JSString -> (arg -> ReactViewRef props) -> Props component handler
view1 ev f = prop_ $ CallbackPropertyReturningView ev undefined $ f undefined -- TODO: ?

view2 :: (HasCallStack, Typeable props) => JSString -> (arg1 -> arg2 -> ReactViewRef props) -> Props component handler
view2 ev f = prop_ $ CallbackPropertyReturningView ev undefined $ f undefined undefined -- TODO: ?

view3 :: (HasCallStack, Typeable props) => JSString -> (arg1 -> arg2 -> arg3 -> ReactViewRef props) -> Props component handler
view3 ev f = prop_ $ CallbackPropertyReturningView ev undefined $ f undefined undefined undefined -- TODO: ?

view4 :: (HasCallStack, Typeable props) => JSString -> (arg1 -> arg2 -> arg3 -> arg4 -> ReactViewRef props) -> Props component handler
view4 ev f = prop_ $ CallbackPropertyReturningView ev undefined $ f undefined undefined undefined undefined -- TODO: ?

from :: (HasCallStack, FromJSVal b) => JSVal -> IO b
from jsval = fromMaybe (error "Unable to decode event target") <$> do
  _ <- js_debug jsval
  fromJSVal jsval

fromJSON :: (HasCallStack, FromJSON b) => JSVal -> IO (Maybe b)
fromJSON jsval = parseMaybe parseJSON <$> event jsval

event :: (HasCallStack, FromJSVal x) => JSVal -> IO x
event jsval = do
  _ <- js_debug jsval
  fromJSValUnchecked jsval

fromNativeJSON :: (HasCallStack, FromJSON x) => JSVal -> IO (Maybe x)
fromNativeJSON jsval = parseMaybe parseJSON <$> nativeEvent jsval

nativeEvent :: (HasCallStack, FromJSVal x) => JSVal -> IO x
nativeEvent jsval = do
  _ <- js_debug jsval
  x <- js_nativeEvent_ jsval
  fromJSValUnchecked x

invoke :: (HasCallStack, FromJSVal r) => This c -> String -> IO r
invoke this@(This c) name = do
  n <- toJSVal name
  r <- js_invokeRef this n
  fromJSValUnchecked r

invoke1 :: (HasCallStack, FromJSVal r, ToJSVal a) => This c -> String -> a -> IO r
invoke1 this@(This c) name a = do
  aa <- toJSVal a
  n <- toJSVal name
  r <- js_invokeRef1 this n aa
  fromJSValUnchecked r

#ifdef __GHCJS__

foreign import javascript unsafe
  "$1['nativeEvent']"
  js_nativeEvent_ :: JSVal -> IO JSVal

foreign import javascript unsafe
  "window.rn_componentRefs[$1][$2]()"
  js_invokeRef :: This c -> JSVal -> IO JSVal

foreign import javascript unsafe
  "window.rn_componentRefs[$1][$2]($3)"
  js_invokeRef1 :: This c -> JSVal -> JSVal -> IO JSVal

#else

js_nativeEvent_ :: JSVal -> IO JSVal
js_nativeEvent_ _ = error "js_nativeEvent only works with GHCJS"

js_invokeRef :: This c -> JSVal -> IO JSVal
js_invokeRef _ _ = error "js_invoke only works with GHCJS"

js_invokeRef1 :: This c -> JSVal -> JSVal -> IO JSVal
js_invokeRef1 _ _ _ = error "js_invoke1 only works with GHCJS"

#endif
