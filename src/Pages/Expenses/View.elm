module Pages.Expenses.View where

import Html exposing (..)
import Html.Attributes exposing (class)

-- APP
import App.Actions as AppActions

-- COMPONENTS
import Components.PageList.View as PageListView

type alias ViewModel =
  {}

view : Signal.Address AppActions.PageActions -> ViewModel -> Html
view address viewModel =
  PageListView.view "Expenses" renderList

renderList : Html
renderList =
  ul
    []
    [ li [] [ renderChecking ]
    ]

renderChecking : Html
renderChecking =
  div
    [ ]
    [ p [] [ text "Name: Checkings" ]
    , p [] [ text "Amoutn: $1200000000000" ]
    ]
