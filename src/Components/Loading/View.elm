module Components.Loading.View (..) where

import Html exposing (..)
import Html.Attributes exposing (style)

view : Html
view =
  div
    [ loadingStyle ]
    [ text "Loading..." ]

loadingStyle : Attribute
loadingStyle =
  style
    [ ( "text-align", "center" )
    ]
