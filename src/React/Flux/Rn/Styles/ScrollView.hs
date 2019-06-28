{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeApplications  #-}
module React.Flux.Rn.Styles.ScrollView
    ( module React.Flux.Rn.Styles.ScrollView
    , ViewStyleProps.BorderStyle(..)
    , ViewStyleProps.Color(..)
    , ViewStyleProps.UnitInterval
    , ViewStyleProps.Visibility(..)
    , LayoutStyleProps.AlignContent(..)
    , LayoutStyleProps.AlignItems(..)
    , LayoutStyleProps.AlignSelf(..)
    , LayoutStyleProps.Direction(..)
    , LayoutStyleProps.Display(..)
    , LayoutStyleProps.FlexDirection(..)
    , LayoutStyleProps.FlexWrap(..)
    , LayoutStyleProps.JustifyContent(..)
    , LayoutStyleProps.Length(..)
    , LayoutStyleProps.Overflow(..)
    , LayoutStyleProps.Position(..)
    , ShadowStyleProps.ContentSize(ContentSize)
    , TransformsStyleProps.Angle(..)
    , TransformsStyleProps.Transform(..)
    )
where

import           React.Flux.Rn.Components.ScrollView
                                                ( ScrollView )
import qualified React.Flux.Rn.StyleProps.LayoutStyleProps
                                               as LayoutStyleProps
import qualified React.Flux.Rn.StyleProps.ShadowStyleProps
                                               as ShadowStyleProps
import qualified React.Flux.Rn.StyleProps.TransformsStyleProps
                                               as TransformsStyleProps
import qualified React.Flux.Rn.StyleProps.ViewStyleProps
                                               as ViewStyleProps

-- ViewStyleProps:

borderRightColor = ViewStyleProps.borderRightColor @ScrollView
backfaceVisibility = ViewStyleProps.backfaceVisibility @ScrollView
borderBottomColor = ViewStyleProps.borderBottomColor @ScrollView
borderBottomEndRadius = ViewStyleProps.borderBottomEndRadius @ScrollView
borderBottomLeftRadius = ViewStyleProps.borderBottomLeftRadius @ScrollView
borderBottomRightRadius = ViewStyleProps.borderBottomRightRadius @ScrollView
borderBottomStartRadius = ViewStyleProps.borderBottomStartRadius @ScrollView
borderBottomWidth = ViewStyleProps.borderBottomWidth @ScrollView
borderColor = ViewStyleProps.borderColor @ScrollView
borderEndColor = ViewStyleProps.borderEndColor @ScrollView
borderLeftWidth = ViewStyleProps.borderLeftWidth @ScrollView
borderRadius = ViewStyleProps.borderRadius @ScrollView
backgroundColor = ViewStyleProps.backgroundColor @ScrollView
borderRightWidth = ViewStyleProps.borderRightWidth @ScrollView
borderStartColor = ViewStyleProps.borderStartColor @ScrollView
borderStyle = ViewStyleProps.borderStyle @ScrollView
borderTopColor = ViewStyleProps.borderTopColor @ScrollView
borderTopEndRadius = ViewStyleProps.borderTopEndRadius @ScrollView
borderTopLeftRadius = ViewStyleProps.borderTopLeftRadius @ScrollView
borderTopRightRadius = ViewStyleProps.borderTopRightRadius @ScrollView
borderTopStartRadius = ViewStyleProps.borderTopStartRadius @ScrollView
borderTopWidth = ViewStyleProps.borderTopWidth @ScrollView
borderWidth = ViewStyleProps.borderWidth @ScrollView
opacity = ViewStyleProps.opacity @ScrollView
elevation = ViewStyleProps.elevation @ScrollView

-- LayoutStyleProps:

marginHorizontal = LayoutStyleProps.marginHorizontal @ScrollView
alignContent = LayoutStyleProps.alignContent @ScrollView
alignSelf = LayoutStyleProps.alignSelf @ScrollView
aspectRatio = LayoutStyleProps.aspectRatio @ScrollView
--borderBottomWidth = LayoutStyleProps.borderBottomWidth @ScrollView
borderEndWidth = LayoutStyleProps.borderEndWidth @ScrollView
--borderLeftWidth   = LayoutStyleProps.borderLeftWidth @ScrollView
--borderRightWidth  = LayoutStyleProps.borderRightWidth @ScrollView
borderStartWidth = LayoutStyleProps.borderStartWidth @ScrollView
--borderTopWidth    = LayoutStyleProps.borderTopWidth @ScrollView
--borderWidth       = LayoutStyleProps.borderWidth @ScrollView
bottom = LayoutStyleProps.bottom @ScrollView
display = LayoutStyleProps.display @ScrollView
end = LayoutStyleProps.end @ScrollView
flex = LayoutStyleProps.flex @ScrollView
flexBasis = LayoutStyleProps.flexBasis @ScrollView
flexDirection = LayoutStyleProps.flexDirection @ScrollView
flexGrow = LayoutStyleProps.flexGrow @ScrollView
flexShrink = LayoutStyleProps.flexShrink @ScrollView
flexWrap = LayoutStyleProps.flexWrap @ScrollView
height = LayoutStyleProps.height @ScrollView
justifyContent = LayoutStyleProps.justifyContent @ScrollView
left = LayoutStyleProps.left @ScrollView
margin = LayoutStyleProps.margin @ScrollView
marginBottom = LayoutStyleProps.marginBottom @ScrollView
marginEnd = LayoutStyleProps.marginEnd @ScrollView
alignItems = LayoutStyleProps.alignItems @ScrollView
marginLeft = LayoutStyleProps.marginLeft @ScrollView
marginRight = LayoutStyleProps.marginRight @ScrollView
marginStart = LayoutStyleProps.marginStart @ScrollView
marginTop = LayoutStyleProps.marginTop @ScrollView
marginVertical = LayoutStyleProps.marginVertical @ScrollView
maxHeight = LayoutStyleProps.maxHeight @ScrollView
maxWidth = LayoutStyleProps.maxWidth @ScrollView
minHeight = LayoutStyleProps.minHeight @ScrollView
minWidth = LayoutStyleProps.minWidth @ScrollView
overflow = LayoutStyleProps.overflow @ScrollView
padding = LayoutStyleProps.padding @ScrollView
paddingBottom = LayoutStyleProps.paddingBottom @ScrollView
paddingEnd = LayoutStyleProps.paddingEnd @ScrollView
paddingHorizontal = LayoutStyleProps.paddingHorizontal @ScrollView
paddingLeft = LayoutStyleProps.paddingLeft @ScrollView
paddingRight = LayoutStyleProps.paddingRight @ScrollView
paddingStart = LayoutStyleProps.paddingStart @ScrollView
paddingTop = LayoutStyleProps.paddingTop @ScrollView
paddingVertical = LayoutStyleProps.paddingVertical @ScrollView
position = LayoutStyleProps.position @ScrollView
right = LayoutStyleProps.right @ScrollView
start = LayoutStyleProps.start @ScrollView
top = LayoutStyleProps.top @ScrollView
width = LayoutStyleProps.width @ScrollView
zIndex = LayoutStyleProps.zIndex @ScrollView
direction = LayoutStyleProps.direction @ScrollView

-- ShadowStyleProps:

shadowColor = ShadowStyleProps.shadowColor @ScrollView
shadowOffset = ShadowStyleProps.shadowOffset @ScrollView
shadowOpacity = ShadowStyleProps.shadowOpacity @ScrollView
shadowRadius = ShadowStyleProps.shadowRadius @ScrollView

-- TransformsStyleProps:

transform = TransformsStyleProps.transform @ScrollView
