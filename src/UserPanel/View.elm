module UserPanel.View where

import Html exposing (..)
import Html.Attributes exposing (class)

import UserPanel.Nav as UserPanelNav

type alias UserName = String

tabs : List UserPanelNav.Tab
tabs =
  [ { title = "Overview", route = "#" }
  , { title = "Expenses", route = "#" }
  ]

renderWelcomeMessage : UserName -> Html
renderWelcomeMessage username =
  let
    uname =
      if username == "" then
        "Fake Name"
      else
        username
  in
    h2
      [ class "greeting" ]
      [ span [ class "welcome" ] [ text "Welcome. " ]
      , text uname
      ]

view : UserName -> Html
view username =
  div
    [ class "user-panel container" ]
    [ renderWelcomeMessage username
    , UserPanelNav.view tabs
    ]
