{-# LANGUAGE DeriveGeneric #-}
module React.Flux.Rn.Types.AccessibilityTraits where

import GHC.Generics               (Generic)
import GHCJS.Marshal              (ToJSVal (..))
import Prelude                    (Show)

data AccessibilityTrait = None
                        | Button
                        | Link
                        | Header
                        | Search
                        | Image
                        | Selected
                        | Plays
                        | Key
                        | Text
                        | Summary
                        | Disabled
                        | FrequentUpdates
                        | StartsMedia
                        | Adjustable
                        | AllowsDirectInteraction
                        | PageTurn
  deriving (Show, Generic)
instance ToJSVal AccessibilityTrait where
    toJSVal None                    = toJSVal "none"
    toJSVal Button                  = toJSVal "button"
    toJSVal Link                    = toJSVal "link"
    toJSVal Header                  = toJSVal "header"
    toJSVal Search                  = toJSVal "search"
    toJSVal Image                   = toJSVal "image"
    toJSVal Selected                = toJSVal "selected"
    toJSVal Plays                   = toJSVal "plays"
    toJSVal Key                     = toJSVal "key"
    toJSVal Text                    = toJSVal "text"
    toJSVal Summary                 = toJSVal "summary"
    toJSVal Disabled                = toJSVal "disabled"
    toJSVal FrequentUpdates         = toJSVal "frequentUpdates"
    toJSVal StartsMedia             = toJSVal "startsMedia"
    toJSVal Adjustable              = toJSVal "adjustable"
    toJSVal AllowsDirectInteraction = toJSVal "allowsDirectInteraction"
    toJSVal PageTurn                = toJSVal "pageTurn"
data AccessibilityTraits =  AccessibilityTrait AccessibilityTrait |  AccessibilityTraits [AccessibilityTrait]
  deriving (Show, Generic)
instance ToJSVal AccessibilityTraits