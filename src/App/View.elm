module App.View where

import Html exposing (..)

import App.Actions as AppActions
import App.Models as AppModels
import App.Routing as AppRouting

import AppBar.View as AppBarView
import UserPanel.View as UserPanelView

import Overview.View as OverViewView
import NotFound.View as NotFoundView

view : Signal.Address AppActions.Action -> AppModels.Model -> Html
view address model =
  let
    currentView =
      case model.route of
        AppRouting.IndexRoute ->
          OverViewView.view address {}

        AppRouting.NotFoundRoute ->
          NotFoundView.view address {}
  in
    div
      []
      [ AppBarView.view "Houston" "https://assets-cdn.github.com/images/icons/emoji/unicode/1f680.png" "settings"
      , UserPanelView.view ""
      , currentView
      ]
