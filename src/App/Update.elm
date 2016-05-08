module App.Update where

import Effects exposing (Effects)

import App.Actions as AppActions
import App.Models as AppModels
import App.Routing as Routing

-- UPDATE

update : AppActions.Action -> AppModels.Model -> ( AppModels.Model, Effects AppActions.Action )
update action model =
  case action of
    AppActions.RoutingAction subAction ->
      let
        ( updatedRouting, fx ) =
          Routing.update subAction model.routing
      in
        ( { model | routing = updatedRouting }, Effects.map AppActions.RoutingAction fx )

