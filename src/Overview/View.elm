module Overview.View where

import Html exposing (..)

import App.Actions as AppActions

type alias ViewModel =
  {}

view : Signal.Address AppActions.Action -> ViewModel -> Html
view address viewModel =
  text "This is overview page"
