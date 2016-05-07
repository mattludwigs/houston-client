module App.Update where

import Effects exposing (Effects)

import App.Actions as AppActions
import App.Models as AppModels

-- UPDATE

update : AppActions.Action -> AppModels.Model -> ( AppModels.Model, Effects AppActions.Action )
update action model =
  case action of
    AppActions.ApplyRoute ( route, location ) ->
      ( { model | route = route, location = location }, Effects.none )

    _ ->
      ( model, Effects.none )
