module Main where

import Effects exposing (Effects, Never)
import Hop
import Hop.Types exposing (Router)
import Html exposing (..)
import Task
import StartApp

import App.Actions as AppActions
import App.Models exposing (Model, newAppModel)
import App.Routing as Routing
import App.Update
import App.View exposing (view)

router : Router Routing.Route
router =
  Hop.new Routing.config

routerSignal : Signal AppActions.Action
routerSignal =
  Signal.map AppActions.ApplyRoute router.signal

init : ( Model, Effects AppActions.Action )
init =
  ( newAppModel, Effects.none )

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
  router.run
