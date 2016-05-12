module Pages.Expenses.View where

import Html exposing (..)
import Html.Attributes exposing (class)

-- APP
import App.Actions as AppActions

-- COMPONENTS
import Components.Loading.View as Loading
import Components.PageList.View as PageListView

import Pages.Expenses.Models exposing (ExpensesModel)

view : Signal.Address AppActions.PageActions -> ExpensesModel -> Html
view address model =
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
    [ p [] [ text "Name: Cick-Fil-A" ]
    , p [] [ text "Amount: $1200000" ]
    , p [] [ text "Budget: Food" ]
    ]
