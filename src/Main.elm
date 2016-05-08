module Main where

import Effects exposing (Effects, Never)
import Hop
import Html exposing (..)
import Task
import StartApp

import App.Actions as AppActions
import App.Models exposing (Model)
import App.Routing as AppRouting
import App.Update
import App.View

-- MODEL

initialModel : Model
initialModel =
  { routing = AppRouting.initialModel
  }

getAppRouter =
  Hop.new AppRouting.routerConfig

routerSignal : Signal AppRouting.Action
routerSignal =
  Signal.map AppRouting.ApplyRoute getAppRouter.signal

-- VIEW

view : Signal.Address AppActions.Action -> Model -> Html
view address model =
  div
    []
    [ App.View.view address model ]

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

port routeRunTask : Task.Task () ()
port routeRunTask =
  getAppRouter.run
