-- Read more about this program in the official Elm guide:
-- https://guide.elm-lang.org/architecture/effects/http.html

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Http
import Json.Decode as Decode

import Counter.View
import Counter.Model



-- MODEL.MSG
type alias Model =
  {
    counter: Counter.Model.CounterModel
  }




-- UPDATE.MSG
type Msg
  = MorePlease
  | NewGif (Result Http.Error String)


update : Msg -> Model -> Model
update msg model =
  { model
    | counter = CounterModel.update msg model.counter
  }



-- VIEW
view : Model -> Html Msg
view model =
  let counter = mode.counter
  in
  div []
    [ h2 [] [counter]
    , br [] []
    ]




main =
  Html.programWithFlags
    { init = init,
      view = view,
      update = update,
      subscriptions = \_ -> Sub.none
    }


init : Counter.Model.CounterModel -> (Counter.Model.CounterModel)
init counterModel =
  ( counterModel )
