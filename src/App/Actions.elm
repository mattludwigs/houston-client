module App.Actions (..) where

import Hop.Types exposing (Location)
import App.Routing exposing (Route)

type PageActions
  = NoOps

type Action
  = NoOp
  | HopAction ()
  | ApplyRoute ( Route, Location )
  | NavigateTo String
  | PageAction PageActions

