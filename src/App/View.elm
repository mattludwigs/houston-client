module App.View where

import Html exposing (..)

import AppBar.View as AppBarView

view : Html
view =
  div
    []
    [ AppBarView.view "Houston" "https://assets-cdn.github.com/images/icons/emoji/unicode/1f680.png" "settings" ]
