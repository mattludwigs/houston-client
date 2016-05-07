module Main where

import Html exposing (..)
import Effects exposing (Effects, Never)
import Task
import StartApp

import App.View

-- ACTIONS

type Action 
  = NoOp

-- MODEL

type alias Model =
  {}

initialModel : Model
initialModel =
  {}

-- UPDATE

update : Action -> Model -> ( Model, Effects Action )
update action model =
  ( model, Effects.none )

-- VIEW

view : Signal.Address Action -> Model -> Html
view address model =
  div
    []
    [ App.View.view ]

-- START APP 

init : ( Model, Effects Action )
init =
  ( initialModel, Effects.none )

app : StartApp.App Model
app =
  StartApp.start
    { init = init
    , inputs = []
    , update = update
    , view = view
    }

main : Signal Html
main =
  app.html

port runner : Signal (Task.Task Never ())
port runner =
  app.tasks
