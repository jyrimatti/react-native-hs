{-# LANGUAGE CPP               #-}
{-# LANGUAGE NoImplicitPrelude #-}
module React.Flux.Rn.App where

import           Data.JSString (pack)
import           GHCJS.Types   (JSString)
import           Prelude       (IO, String, error)
import           React.Flux    (View)

{-# ANN module ("HLint: ignore Use camelCase" :: String) #-}

registerApp :: String -> View a -> IO ()
registerApp appName controllerView = js_registerComponent (pack appName) controllerView

#ifdef __GHCJS__
-- a foreign wrapper function for app registration
foreign import javascript unsafe
  "__registerComponent($1, $2)"
  js_registerComponent :: JSString -> View a -> IO ()
#else
js_registerComponent :: JSString -> View a -> IO ()
js_registerComponent _ _ = error "js_registerComponent only works with GHCJS"
#endif
