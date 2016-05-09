module App.View where

import Html exposing (..)

import App.Actions exposing (Action)
import App.Models exposing (Model)
import App.Routing as Routing

import AppBar.View as AppBarView
import UserPanel.View as UserPanelView

import Overview.View as OverViewView
import NotFound.View as NotFoundView


view : Signal.Address Action -> Model -> Html
view address model =
  div
    []
    [ AppBarView.view "Houston" "https://assets-cdn.github.com/images/icons/emoji/unicode/1f680.png" "settings"
    , UserPanelView.view ""
    , page address model
    ]

page : Signal.Address Action -> Model -> Html
page address model =
  case model.route of
    Routing.IndexRoute ->
      div
        []
        [ text "overview" ]

    Routing.NotFoundRoute ->
      div
        []
        [ text "404!" ]

