module App.Actions where

import Hop.Types exposing (Location)

import App.Routing as AppRouting

type Action
  = RoutingAction AppRouting.Action

