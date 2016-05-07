module AppBar.View where

import Html exposing (..)
import Html.Attributes exposing (class, src)

renderEmojiIcon : String -> Html
renderEmojiIcon iconPath =
  img
    [ class "emoji"
    , src iconPath
    ]
    []

view : String -> String -> String -> Html
view title icon settingsIcon =
  div
    [ class "app-bar container" ]
    [ h1
      []
      [ text title
      , renderEmojiIcon icon
      , i [ class "material-icons settings" ] [ text settingsIcon ]
      ]
    ]
