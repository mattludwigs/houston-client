module Pages.Expenses.Effects (..) where

import Effects exposing (Effects)
import Http
import Json.Decode as Decode exposing ((:=))
import Task

import Pages.Expenses.Models exposing (Expense)
import Pages.Expenses.Actions as (ExpensesActions)


fetchAll : Effects ExpensesActions
fetchAll =
  Http.get collectionDecoder fetchAllUrl
    |> Task.toResult 
    |> Task.map FetchAllDone
    |> Effects.Task

fetchAllUrl : String
fetchAllUrl =
  "http://localhost:4000/expenses"

collectionDecoder : Decode.Decoder (List Expense)
collectionDecoder =
  Decode.list memberDecoder

memberDecoder : Decode.Decoder Expense
memberDecoder =
  Decode.object4
    Expense
    ("id" := Decode.int)
    ("name" := Decode.string)
    ("amount" := Decode.int)
    ("budget" := Decode.string)
