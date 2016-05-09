module App.Routing where

import Hop
import Hop.Types exposing (Config, PathMatcher, newLocation)
import Hop.Matchers exposing (match1)
import Effects exposing (Effects)

type Route
  = IndexRoute
  | ExpensesRoute
  | NotFoundRoute

indexMatcher : PathMatcher Route
indexMatcher =
  match1 IndexRoute ""

overViewMatcher : PathMatcher Route
overViewMatcher =
  match1 IndexRoute "/overview"

expensesMatcher : PathMatcher Route
expensesMatcher =
  match1 ExpensesRoute "/expenses"

matchers : List (PathMatcher Route)
matchers =
  [ indexMatcher
  , overViewMatcher
  , expensesMatcher
  ]

config : Config Route
config =
  { basePath = ""
  , hash = True
  , matchers = matchers
  , notFound = NotFoundRoute
  }
