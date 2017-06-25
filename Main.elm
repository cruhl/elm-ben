module Main exposing (main)

import Html exposing (..)
import Html.Events exposing (onClick)


main : Program Never Model Msg
main =
    beginnerProgram
        { model = init
        , update = update
        , view = view
        }


type alias Model =
    Int


init : Model
init =
    0


type Msg
    = Add
    | Subtract
    | Clear


update : Msg -> Model -> Model
update msg model =
    case msg of
        Add ->
            model + 1

        Subtract ->
            model - 1

        Clear ->
            0


view : Model -> Html Msg
view model =
    div []
        [ button [ onClick Add ] [ text "+" ]
        , button [ onClick Subtract ] [ text "-" ]
        , button [ onClick Clear ] [ text "c" ]
        , h1 [] [ text (toString model) ]
        ]
