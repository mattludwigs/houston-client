module App.View where

import Html exposing (..)

import App.Actions as AppActions
import App.Models as AppModels
import App.Routing as Routing

import AppBar.View as AppBarView
import UserPanel.View as UserPanelView

import Overview.View as OverViewView
import NotFound.View as NotFoundView

getCurrentView : Signal.Address AppActions.Action -> AppModels.Model -> Html
getCurrentView address model =
  case model.route.route of
    Routing.IndexRoute ->
      OverViewView.view address {}

    Routing.NotFoundRoute ->
      NotFoundView.view address {}

view : Signal.Address AppActions.Action -> AppModels.Model -> Html
view address model =
  let
    currentView = getCurrentView address model
  in
    div
      []
      [ AppBarView.view "Houston" "https://assets-cdn.github.com/images/icons/emoji/unicode/1f680.png" "settings"
      , UserPanelView.view ""
      , currentView
      ]
