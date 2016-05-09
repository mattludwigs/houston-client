module Pages.Overview.View where

import Html exposing (..)

import App.Actions as AppActions

type alias ViewModel =
  {}

view : Signal.Address AppActions.PageActions -> ViewModel -> Html
view address viewModel =
  div
    []
    [ h3 [] [ text "Overview" ]
    ]
