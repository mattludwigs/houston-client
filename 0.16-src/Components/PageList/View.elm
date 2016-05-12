module Components.PageList.View (..) where

import Html exposing (..)
import Html.Attributes exposing (class)

import Components.VersionFooter.View as VersionFooter

type alias PageTitle = String
type alias PageList = Html

view : PageTitle -> PageList -> Html
view pageTitle pageList =
  div
    []
    [ h3 [] [ text pageTitle ]
    , pageList
    , VersionFooter.view
    ]

