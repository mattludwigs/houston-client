module App.Routing where

import Hop
import Hop.Matchers exposing (match1)
import Hop.Navigate exposing (navigateTo)
import Hop.Types exposing (Config, Router, PathMatcher, Location, newLocation)
import Effects exposing (Effects)

type Route
  = IndexRoute
  | NotFoundRoute

type Action
  = ApplyRoute ( Route, Location )

type alias Model =
  { location : Location
  , route : Route
  }

initialModel : Model
initialModel =
  { location = newLocation
  , route = IndexRoute
  }

update : Action -> Model -> ( Model, Effects Action )
update action model =
  case action of
    ApplyRoute ( route, location ) ->
      ( { model | route = route, location = location }, Effects.none )


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

