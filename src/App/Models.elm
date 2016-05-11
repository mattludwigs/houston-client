module App.Models where

import Hop.Types exposing (Location, newLocation)
import App.Routing as Routing

import Pages.Expenses.Models exposing (Expense)

type alias Model =
  { route : Routing.Route
  , location : Location
  , activeTab : String
  , expenses : List Expense
  }

newAppModel : Model
newAppModel =
  { route = Routing.IndexRoute
  , location = newLocation
  , activeTab = "Overview"
  , expenses = []
  }

