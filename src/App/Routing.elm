module App.Routing where

import Hop
import Hop.Matchers exposing (match1)
import Hop.Navigate exposing (navigateTo)
import Hop.Types exposing (Config, Router, PathMatcher, Location, newLocation)

type Route
  = IndexRoute
  | NotFoundRoute

indexMatcher : PathMatcher Route
indexMatcher =
  match1 IndexRoute "/"


matchers : List (PathMatcher Route)
matchers =
  [ indexMatcher
  ]

routerConfig : Config Route
routerConfig =
  { hash = True
  , basePath = ""
  , matchers = matchers
  , notFound = NotFoundRoute
  }

router : Router Route
router =
  Hop.new routerConfig

