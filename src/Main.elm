module Main exposing (..)

import Html exposing (..)
import Html.App as Html

main =
  Html.program
    { init = init
    , view = view
    , update = update
    , subscriptions = subscriptions
    }

-- MODEL

type alias Model =
  { username : String
  }

-- UPDATE

type Msg 
  = NoOp

update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    NoOp ->
      ( model, Cmd.none )


-- VIEW

view : Model -> Html Msg
view model =
  div
    []
    [ text model.username ]


-- SUBSCRIPTIONS

subscriptions : Model -> Sub Msg
subscriptions model =
  Sub.none


-- INIT

init : (Model, Cmd Msg)
init =
  ( Model "TEST", Cmd.none )
