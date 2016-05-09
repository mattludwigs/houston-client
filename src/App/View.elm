module App.View where

import Html exposing (..)
import Html.Attributes exposing (class)

import App.Actions exposing (..)
import App.Models exposing (Model)
import App.Routing as Routing

import Components.AppBar.View as AppBarView
import Components.UserPanel.View as UserPanelView

import Pages.Overview.View as OverViewView
import Pages.Expenses.View as ExpensesView
import Pages.NotFound.View as NotFoundView

view : Signal.Address Action -> Model -> Html
view address model =
  div
    []
    [ AppBarView.view "Houston" "https://assets-cdn.github.com/images/icons/emoji/unicode/1f680.png" "settings"
    , UserPanelView.view ""
    , div
        [ class "view list container" ]
        [ page address model ]
    ]

page : Signal.Address Action -> Model -> Html
page address model =
  case model.route of
    Routing.IndexRoute ->
      OverViewView.view (Signal.forwardTo address PageAction) {}

    Routing.ExpensesRoute ->
      ExpensesView.view (Signal.forwardTo address PageAction) {}

    Routing.NotFoundRoute ->
      div
        []
        [ text "404!" ]

