module Pages.Expenses.Models (..) where

type alias Expense = 
  { id : Int
  , name : String
  , amount : Float
  , budget : String
  }

type alias ExpensesModel =
  { expenses : List Expense
  }

newExpense : ExpensesModel
newExpense =
  { expenses = []
  }

