module Components.VersionFooter.View (..) where

import Html exposing (Html, text, div, p)
import Html.Attributes exposing (class)

view : Html
view =
  div
    [ class "version" ]
    [ p [] [ text "0.0.1" ] ]
