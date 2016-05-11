module Pages.Expenses.Actions (..) where

import Http
import Pages.Expenses.Models exposing (Expense)

type ExpensesActions
  = NoOp
  | FetchAllDone (Result Http.Error (List Expense))
