module App.Update (..) where

import Debug
import Effects exposing (Effects)
import Hop.Navigate exposing (navigateTo, setQuery)
import App.Actions exposing (..)
import App.Models exposing (Model)
import App.Routing as Routing

update : Action -> Model -> ( Model, Effects Action )
update action model =
  case Debug.log "action" action of
    NavigateTo path ->
      ( model, Effects.map HopAction (navigateTo Routing.config path) )

    ApplyRoute ( route, location ) ->
      let
        activeTab =
          getActiveTab route
        _ =
          Debug.log "Model" activeTab
      in
        ( { model | route = route, location = location, activeTab = activeTab }, Effects.none )

    HopAction () ->
      ( model, Effects.none )

    _ ->
      ( model, Effects.none )


getActiveTab : Routing.Route -> String
getActiveTab route =
  case route of
    Routing.ExpensesRoute ->
      "Expenses"

    _ ->
      ""
