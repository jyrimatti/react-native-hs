{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE FlexibleContexts      #-}
module React.Flux.Rn.StyleProps.LayoutStyleProps (
    module React.Flux.Rn.StyleProps.LayoutStyleProps,
    AlignContent(..), AlignItems(..), AlignSelf(..), Direction(..), Display(..), FlexDirection(..), FlexWrap(..), JustifyContent(..), Length(..), Overflow(..), Position(..)
) where

import           Numeric.Natural          (Natural)
import           Prelude                  (Int)
import           React.Flux.Rn.Properties (Styles, style, Has)
import           React.Flux.Rn.Types      (AlignContent (..), AlignItems (..),
                                           AlignSelf (..), Direction (..),
                                           Display (..), FlexDirection (..),
                                           FlexWrap (..), JustifyContent (..),
                                           Length (..), Overflow (..),
                                           Position (..))

marginHorizontal :: Has c "marginHorizontal" => Length -> Styles c handler
marginHorizontal = style "marginHorizontal"

alignContent :: Has c "alignContent" => AlignContent -> Styles c handler
alignContent = style "alignContent"

alignSelf :: Has c "alignSelf" => AlignSelf -> Styles c handler
alignSelf = style "alignSelf"

aspectRatio :: Has c "aspectRatio" => Natural -> Styles c handler
aspectRatio = style "aspectRatio"

borderBottomWidth :: Has c "borderBottomWidth" => Natural -> Styles c handler
borderBottomWidth = style "borderBottomWidth"

borderEndWidth :: Has c "borderEndWidth" => Natural -> Styles c handler
borderEndWidth = style "borderEndWidth"

borderLeftWidth :: Has c "borderLeftWidth" => Natural -> Styles c handler
borderLeftWidth = style "borderLeftWidth"

borderRightWidth :: Has c "borderRightWidth" => Natural -> Styles c handler
borderRightWidth = style "borderRightWidth"

borderStartWidth :: Has c "borderStartWidth" => Natural -> Styles c handler
borderStartWidth = style "borderStartWidth"

borderTopWidth :: Has c "borderTopWidth" => Natural -> Styles c handler
borderTopWidth = style "borderTopWidth"

borderWidth :: Has c "borderWidth" => Natural -> Styles c handler
borderWidth = style "borderWidth"

bottom :: Has c "bottom" => Length -> Styles c handler
bottom = style "bottom"

display :: Has c "display" => Display -> Styles c handler
display = style "display"

end :: Has c "end" => Length -> Styles c handler
end = style "end"

flex :: Has c "flex" => Int -> Styles c handler
flex = style "flex"

flexBasis :: Has c "v" => Length -> Styles c handler
flexBasis = style "flexBasis"

flexDirection :: Has c "flexDirection" => FlexDirection -> Styles c handler
flexDirection = style "flexDirection"

flexGrow :: Has c "flexGrow" => Natural -> Styles c handler
flexGrow = style "flexGrow"

flexShrink :: Has c "flexShrink" => Natural -> Styles c handler
flexShrink = style "flexShrink"

flexWrap :: Has c "flexWrap" => FlexWrap -> Styles c handler
flexWrap = style "flexWrap"

height :: Has c "height" => Length -> Styles c handler
height = style "height"

justifyContent :: Has c "justifyContent" => JustifyContent -> Styles c handler
justifyContent = style "justifyContent"

left :: Has c "left" => Length -> Styles c handler
left = style "left"

margin :: Has c "margin" => Length -> Styles c handler
margin = style "margin"

marginBottom :: Has c "marginBottom" => Length -> Styles c handler
marginBottom = style "marginBottom"

marginEnd :: Has c "marginEnd" => Length -> Styles c handler
marginEnd = style "marginEnd"

alignItems :: Has c "alignItems" => AlignItems -> Styles c handler
alignItems = style "alignItems"

marginLeft :: Has c "marginLeft" => Length -> Styles c handler
marginLeft = style "marginLeft"

marginRight :: Has c "marginRight" => Length -> Styles c handler
marginRight = style "marginRight"

marginStart :: Has c "marginStart" => Length -> Styles c handler
marginStart = style "marginStart"

marginTop :: Has c "marginTop" => Length -> Styles c handler
marginTop = style "marginTop"

marginVertical :: Has c "marginVertical" => Length -> Styles c handler
marginVertical = style "marginVertical"

maxHeight :: Has c "maxHeight" => Length -> Styles c handler
maxHeight = style "maxHeight"

maxWidth :: Has c "maxWidth" => Length -> Styles c handler
maxWidth = style "maxWidth"

minHeight :: Has c "minHeight" => Length -> Styles c handler
minHeight = style "minHeight"

minWidth :: Has c "minWidth" => Length -> Styles c handler
minWidth = style "minWidth"

overflow :: Has c "overflow" => Overflow -> Styles c handler
overflow = style "overflow"

padding :: Has c "padding" => Length -> Styles c handler
padding = style "padding"

paddingBottom :: Has c "paddingBottom" => Length -> Styles c handler
paddingBottom = style "paddingBottom"

paddingEnd :: Has c "paddingEnd" => Length -> Styles c handler
paddingEnd = style "paddingEnd"

paddingHorizontal :: Has c "paddingHorizontal" => Length -> Styles c handler
paddingHorizontal = style "paddingHorizontal"

paddingLeft :: Has c "paddingLeft" => Length -> Styles c handler
paddingLeft = style "paddingLeft"

paddingRight :: Has c "paddingRight" => Length -> Styles c handler
paddingRight = style "paddingRight"

paddingStart :: Has c "paddingStart" => Length -> Styles c handler
paddingStart = style "paddingStart"

paddingTop :: Has c "paddingTop" => Length -> Styles c handler
paddingTop = style "paddingTop"

paddingVertical :: Has c "paddingVertical" => Length -> Styles c handler
paddingVertical = style "paddingVertical"

position :: Has c "position" => Position -> Styles c handler
position = style "position"

right :: Has c "right" => Length -> Styles c handler
right = style "right"

start :: Has c "start" => Length -> Styles c handler
start = style "start"

top :: Has c "top" => Length -> Styles c handler
top = style "top"

width :: Has c "width" => Length -> Styles c handler
width = style "width"

zIndex :: Has c "zIndex" => Int -> Styles c handler
zIndex = style "zIndex"

-- Platform: IOS
direction :: Has c "direction" => Direction -> Styles c handler
direction = style "direction"
