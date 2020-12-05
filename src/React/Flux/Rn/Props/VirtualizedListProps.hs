{-# LANGUAGE DataKinds               #-}
{-# LANGUAGE FlexibleContexts        #-}
{-# LANGUAGE OverloadedStrings       #-}
{-# LANGUAGE RankNTypes              #-}
module React.Flux.Rn.Props.VirtualizedListProps (
    module React.Flux.Rn.Props.VirtualizedListProps,
    module React.Flux.Rn.Types
) where

import GHCJS.Marshal            (FromJSVal)
import Numeric.Natural          (Natural)
import Prelude                  (Bool, String)
import React.Flux.Rn.Events     (EventHandlerType, on1, ret2)
import React.Flux.Rn.Properties (Has, Props, prop)

import React.Flux.Rn.Types      (Index)

-- Required
last :: Has component "last" => Natural -> Props component handler
last = prop "last"

-- Required
first :: Has component "first" => Natural -> Props component handler
first = prop "first"

horizontal :: Has component "horizontal" => Bool -> Props component handler
horizontal = prop "horizontal"

initialNumToRender :: Has component "initialNumToRender" => Natural -> Props component handler
initialNumToRender = prop "initialNumToRender"

keyExtractor :: forall component item handler. (FromJSVal item, Has component "keyExtractor") => (item -> Index -> String) -> Props component handler
keyExtractor = ret2 "keyExtractor"

disableVirtualization :: Has component "disableVirtualization" => Bool -> Props component handler
disableVirtualization = prop "disableVirtualization"

maxToRenderPerBatch :: Has component "maxToRenderPerBatch" => Natural -> Props component handler
maxToRenderPerBatch = prop "maxToRenderPerBatch"

onEndReachedThreshold :: forall component handler. Has component "onEndReachedThreshold" => (Natural -> EventHandlerType handler) -> Props component handler
onEndReachedThreshold = on1 "onEndReachedThreshold"

scrollEventThrottle :: Has component "scrollEventThrottle" => Natural -> Props component handler
scrollEventThrottle = prop "scrollEventThrottle"

updateCellsBatchingPeriod :: Has component "updateCellsBatchingPeriod" => Natural {- ? -} -> Props component handler
updateCellsBatchingPeriod = prop "updateCellsBatchingPeriod"

windowSize :: Has component "windowSize" => Natural {- ? -} -> Props component handler
windowSize = prop "windowSize"

{-
instance Has c "last"
instance Has c "first"
instance Has c "horizontal"
instance Has c "initialNumToRender"
instance Has c "keyExtractor"
instance Has c "disableVirtualization"
instance Has c "maxToRenderPerBatch"
instance Has c "onEndReachedThreshold"
instance Has c "scrollEventThrottle"
instance Has c "updateCellsBatchingPeriod"
instance Has c "windowSize"
-}