module Counter.View exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)

import Counter.Msg exposing (..)
import Counter.Model exposing (..)
import Counter.Update exposing (..)



viewCounter =
  div []
      [
        h2 [] [text "counterModel"],
        button [ onClick Reset ] [ text "Reset" ],
        br [] [],
        button [ onClick Stop ] [ text "Stop" ],
        br [] [],
        button [ onClick Start ] [ text "Start" ],
        br [] []
      ]
