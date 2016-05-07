module UserPanel.Nav where

import Html exposing (..)
import Html.Attributes exposing (class, href)

type alias Tab =
  { route : String
  , title : String
  }

renderTab : Tab -> Html
renderTab tab =
  li
    []
    [ a [ href tab.route ] [ text tab.title ] ]

view : List Tab -> Html
view tabs =
  ul
    [ class "tabs" ]
    (List.map renderTab tabs)

