module App.Actions (..) where

import Hop.Types exposing (Location)
import App.Routing exposing (Route)

type Action
  = HopAction ()
  | ApplyRoute ( Route, Location )
  | NavigateTo String
  | PageAction ()
