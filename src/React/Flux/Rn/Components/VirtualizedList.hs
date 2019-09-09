{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE NoImplicitPrelude     #-}
{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE RankNTypes            #-}
{-# LANGUAGE TypeApplications      #-}
module React.Flux.Rn.Components.VirtualizedList (
    module React.Flux.Rn.Components.VirtualizedList,
    Index
) where

import           GHCJS.Marshal                            (FromJSVal)
import           Prelude                                  (String, fmap, (.))
import           React.Flux                               (ReactElementM,
                                                           foreign_)
import           React.Flux.Rn.Properties                 (Has, Props, props)
import qualified React.Flux.Rn.Props.VirtualizedListProps as VirtualizedListProps
import           React.Flux.Rn.Types                      (Index)



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
