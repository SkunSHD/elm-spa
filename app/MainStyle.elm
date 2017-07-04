module MainStyle exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


h1Style =
  style
    [ ("width", "100%")
    , ("height", "40px")
    , ("padding", "10px 0")
    , ("font-size", "2em")
    , ("text-align", "center")
    ]




module App exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick, onInput)

import Http
import Json.Decode as Decode

import MainStyle exposing (..)


-- MODEL
type alias Model =
  {
    appName : String,
    userName : String
  }

model : Model
model =
  Model "nicemove" "darting"



-- UPDATE
type App
  = ChangeProjectName String
  | ChangeUserName String


update : App -> Model -> Model
update app model =
  case app of
    ChangeProjectName appName ->
      { model | appName = appName }

    ChangeUserName userName ->
      { model | userName = userName }



-- VIEW
view model =
  div []
    [
      h1 [ h1Style ] [ text ("Hello, " ++ model.userName) ],
      input [ Html.Attributes.type_ "text", placeholder "Project Name", onInput ChangeProjectName, value model.appName ] [],
      input [ Html.Attributes.type_ "text", placeholder "User Name", onInput ChangeUserName, value model.userName ] []
    ]
