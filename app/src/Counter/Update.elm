module Counter.Update exposing (..)
import Counter.Msg exposing (..)
import Counter.Model exposing (..)


updateCounter: CounterMsg -> CounterModel -> CounterModel
updateCounter msg counterModel =
  case msg of
    Reset ->
      { counterModel | count = 0 }
    Stop ->
      { counterModel | count = 9999 }
    Start ->
      { counterModel | count = 1 }
