module Components.UserPanel.Nav where

import Html exposing (..)
import Html.Attributes exposing (class, href)

type alias Tab =
  { route : String
  , title : String
  , isActive : Bool
  }

renderTab : Tab -> Html
renderTab tab =
  let
    activeClass =
      if tab.isActive then
        "active"
      else
        ""
  in
    li
      []
      [ a
        [ href tab.route
        , class activeClass
        ]
        [ text tab.title ]
      ]

view : List Tab -> Html
view tabs =
  ul
    [ class "tabs" ]
    (List.map renderTab tabs)

