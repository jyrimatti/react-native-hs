{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE RankNTypes            #-}
module React.Flux.Rn.Components.VirtualizedList (
    module React.Flux.Rn.Components.VirtualizedList,
    module React.Flux.Rn.Props.VirtualizedListProps
) where

import Prelude                                  (fmap, (.))
import React.Flux                               (ReactElementM, foreign_)
import React.Flux.Rn.Properties                 (Has, Props, props)
import React.Flux.Rn.Props.VirtualizedListProps


data VirtualizedList
virtualizedList :: [Props VirtualizedList handler] -> ReactElementM handler a -> ReactElementM handler a
virtualizedList = foreign_ "VirtualizedList" . fmap props



-- VirtualizedListProps:

instance Has VirtualizedList "last"
instance Has VirtualizedList "first"
instance Has VirtualizedList "horizontal"
instance Has VirtualizedList "initialNumToRender"
instance Has VirtualizedList "keyExtractor"
instance Has VirtualizedList "disableVirtualization"
instance Has VirtualizedList "maxToRenderPerBatch"
instance Has VirtualizedList "onEndReachedThreshold"
instance Has VirtualizedList "scrollEventThrottle"
instance Has VirtualizedList "updateCellsBatchingPeriod"
instance Has VirtualizedList "windowSize"

-- TODO: Methods
