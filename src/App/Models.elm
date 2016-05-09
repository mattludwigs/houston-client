module App.Models where

import Hop.Types exposing (Location, newLocation)
import App.Routing as Routing

type alias Model =
  { route : Routing.Route
  , location : Location
  , activeTab : String
  }

newAppModel : Model
newAppModel =
  { route = Routing.IndexRoute
  , location = newLocation
  , activeTab = "Overview"
  }

