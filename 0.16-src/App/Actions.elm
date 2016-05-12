module App.Actions (..) where

import Hop.Types exposing (Location)
import App.Routing exposing (Route)

import Pages.Expenses.Actions exposing (ExpensesActions)

type PageActions
  = ExpensesActions

type Action
  = NoOp
  | HopAction ()
  | ApplyRoute ( Route, Location )
  | NavigateTo String
  | PageAction PageActions

