module App.Actions where

import Hop.Types exposing (Location)

import App.Routing as AppRouting

type Action
  = NoOp
  | ApplyRoute ( AppRouting.Route, Location )

