module App.Routing where

import Hop
import Hop.Types exposing (Config, PathMatcher, newLocation)
import Hop.Matchers exposing (match1)
import Effects exposing (Effects)

type Route
  = IndexRoute
  | NotFoundRoute

overViewMatcher : PathMatcher Route
overViewMatcher =
  match1 IndexRoute ""

matchers : List (PathMatcher Route)
matchers =
  [ overViewMatcher
  ]

config : Config Route
config =
  { basePath = "/app"
  , hash = False
  , matchers = matchers
  , notFound = NotFoundRoute
  }
