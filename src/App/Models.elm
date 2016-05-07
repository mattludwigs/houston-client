module App.Models where

import Hop.Types exposing (Location)
import App.Routing

type alias Model =
  { location : Location
  , route : App.Routing.Route
  }

