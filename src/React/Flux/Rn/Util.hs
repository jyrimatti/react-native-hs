{-# LANGUAGE CPP               #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE OverloadedStrings #-}
module React.Flux.Rn.Util where

import Control.DeepSeq (NFData)
import Control.Monad ((>=>),(>>=))
import Data.Aeson               (FromJSON, parseJSON)
import Data.Aeson.Types         (parseMaybe)
import Data.Maybe               (fromMaybe)
import Data.Typeable            (Typeable)
import GHC.Stack (HasCallStack)
import GHC.Stack (HasCallStack)
import GHCJS.Foreign.Callback
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
import Unsafe.Coerce (unsafeCoerce)

{-# ANN module ("HLint: ignore Use camelCase" :: String) #-}

log :: (HasCallStack, ToJSVal a) => a -> IO ()
log = toJSVal >=> js_log

logJSVal :: (HasCallStack, ToJSVal a) => a -> JSVal -> IO ()
logJSVal a b = do
  aa <- toJSVal a
  js_logJSVal aa b

call :: (HasCallStack, FromJSVal r) => JSString -> IO r
call name = do
  r <- js_call name
  fromJSValUnchecked r

call_jsval :: (HasCallStack, IsJSVal r) => JSString -> IO r
call_jsval name = do
  r <- js_call name
  unsafeCoerce r

call1 :: (HasCallStack, FromJSVal r, ToJSVal a) => JSString -> a -> IO r
call1 name a = do
  aa <- toJSVal a
  r <- js_call1 name aa
  fromJSValUnchecked r

call1_jsval :: (HasCallStack, IsJSVal r, IsJSVal a) => JSString -> a -> IO r
call1_jsval name a = do
  r <- js_call1 name (jsval a)
  unsafeCoerce r

call2 :: (HasCallStack, FromJSVal r, ToJSVal a, ToJSVal b) => JSString -> a -> b -> IO r
call2 name a b = do
  aa <- toJSVal a
  bb <- toJSVal b
  r <- js_call2 name aa bb
  fromJSValUnchecked r

call2_jsval :: (HasCallStack, IsJSVal r, IsJSVal a, IsJSVal b) => JSString -> a -> b -> IO r
call2_jsval name a b = do
  r <- js_call2 name (jsval a) (jsval b)
  unsafeCoerce r

#ifdef __GHCJS__

foreign import javascript unsafe
  "$1[$2]"
  js_getProp :: JSVal -> JSString -> JSVal

foreign import javascript unsafe
    "console.log(new Date().toUTCString() + ': ' + $1)"
  js_log :: JSVal -> IO ()

foreign import javascript unsafe
  "console.log(new Date().toUTCString() + ': ' + $1 + ' ' + $2)"
  js_logJSVal :: JSVal -> JSVal -> IO ()

foreign import javascript unsafe
  "$r = window[$1] || (typeof global !== 'undefined' ? global[$1] : undefined)"
  js_lookupWindow :: JSString -> JSVal

foreign import javascript unsafe
  "JSON.stringify($1)"
  js_toString :: JSVal -> IO JSString

foreign import javascript unsafe
  "if (window.renativehs_debug) { window.renativehs_debug($1); }"
  js_debug :: JSVal -> IO ()

foreign import javascript unsafe
  "window[$1]()"
  js_call :: JSString -> IO JSVal

foreign import javascript unsafe
  "window[$1]()"
  js_call_ :: JSString -> IO ()

foreign import javascript unsafe
  "window[$1]($2)"
  js_call1 :: JSString -> JSVal -> IO JSVal

foreign import javascript unsafe
  "window[$1]($2)"
  js_call1_ :: JSString -> JSVal -> IO ()

foreign import javascript unsafe
  "window[$1]($2, $3)"
  js_call2 :: JSString -> JSVal -> JSVal -> IO JSVal

foreign import javascript unsafe
  "window[$1]($2, $3)"
  js_call2_ :: JSString -> JSVal -> JSVal -> IO ()

foreign import javascript unsafe
  "$1()"
  js_invoke :: JSVal -> IO JSVal

foreign import javascript unsafe
  "$1()"
  js_invoke_ :: JSVal -> IO ()

foreign import javascript unsafe
  "$1($2)"
  js_invoke1 :: JSVal -> JSVal -> IO JSVal

foreign import javascript unsafe
  "$1($2)"
  js_invoke1_ :: JSVal -> JSVal -> IO ()

foreign import javascript unsafe
  "$1($2, $3)"
  js_invoke2 :: JSVal -> JSVal -> JSVal -> IO JSVal

foreign import javascript unsafe
  "$1($2, $3)"
  js_invoke2_ :: JSVal -> JSVal -> JSVal -> IO ()

#else

js_getProp :: JSVal -> JSString -> JSVal
js_getProp _ = error "js_getProp only works with GHCJS"

js_log :: JSVal -> IO ()
js_log = error "log only works with GHCJS"

js_logJSVal :: JSVal -> JSVal -> IO ()
js_logJSVal = error "logJSVal only works with GHCJS"

js_lookupWindow :: JSString -> JSVal
js_lookupWindow _ = error "js_lookupWindow only works with GHCJS"

js_toString :: JSVal -> IO JSString
js_toString _ = error "js_toString only works with GHCJS"

js_debug :: JSVal -> IO ()
js_debug _ = error "js_debug only works with GHCJS"

js_call :: JSString -> IO JSVal
js_call _ = error "js_call only works with GHCJS"

js_call_ :: JSString -> IO ()
js_call_ _ = error "js_call only works with GHCJS"

js_call1 :: JSString -> JSVal -> IO JSVal
js_call1 _ _ = error "js_call1 only works with GHCJS"

js_call1_ :: JSString -> JSVal -> IO ()
js_call1_ _ _ = error "js_call1 only works with GHCJS"

js_call2 :: JSString -> JSVal -> JSVal -> IO JSVal
js_call2 _ _ _ = error "js_call2 only works with GHCJS"

js_call2_ :: JSString -> JSVal -> JSVal -> IO ()
js_call2_ _ _ _ = error "js_call2 only works with GHCJS"

#endif
