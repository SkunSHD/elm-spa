module Counter.Model exposing (..)

type alias CounterModel =
  {
    count: Int
  }


model: CounterModel
model =
    { count = 0
    }
