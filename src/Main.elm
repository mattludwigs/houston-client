module Main where

import Effects exposing (Effects, Never)
import Html exposing (..)
import Hop.Types exposing (newLocation)
import Task
import StartApp

import App.Actions as AppActions
import App.Models exposing (Model)
import App.Routing
import App.Update
import App.View

-- MODEL

initialModel : Model
initialModel =
  { location = newLocation
  , route = App.Routing.IndexRoute
  }

routerSignal : Signal AppActions.Action
routerSignal =
  Signal.map AppActions.ApplyRoute App.Routing.router.signal

-- VIEW

view : Signal.Address AppActions.Action -> Model -> Html
view address model =
  div
    []
    [ App.View.view ]

-- START APP

init : ( Model, Effects AppActions.Action )
init =
  ( initialModel, Effects.none )

app : StartApp.App Model
app =
  StartApp.start
    { init = init
    , inputs = [ routerSignal ]
    , update = App.Update.update
    , view = view
    }

main : Signal Html
main =
  app.html

port runner : Signal (Task.Task Never ())
port runner =
  app.tasks
