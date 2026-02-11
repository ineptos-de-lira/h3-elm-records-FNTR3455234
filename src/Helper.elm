module Helper exposing (..)

import Html


add2 : Int -> Int -> Int
add2 int1 int2 =
    int1 + int2


add3 : Float -> Float -> Float -> Float
add3 int1 int2 int3 =
    int1 + int2 + int3


calc : Int -> Int -> (Int -> Int -> Int) -> Int
calc int1 int2 operator =
    operator int1 int2


type alias LenguageP =
    { name : String
    , releaseYear : Int
    , currentVersion : String
    }


pl1 : LenguageP
pl1 =
    { name = "JavaScript"
    , releaseYear = 2025
    , currentVersion = "ECMAScript 2025"
    }


pl2 : LenguageP
pl2 =
    { name = "Python"
    , releaseYear = 2026
    , currentVersion = "Python 3.14.3"
    }


listaprogra : List LenguageP
listaprogra =
    [ pl1, pl2 ]


languageNames : List LenguageP -> List String
languageNames listp =
    List.map .name listp


type alias UserT =
    { name : String
    , uType : String
    }


isStudent : UserT -> String
isStudent typeu =
    if typeu.uType == "Student" then
        typeu.name

    else
        ""


onlyStudents : List UserT -> List String
onlyStudents listaus =
    List.map isStudent listaus


type alias Videogame =
    { title : String
    , releaseYear : Int
    , available : Bool
    , downloads : Int
    , genres : List String
    }


videogameGenres : Videogame -> List String
videogameGenres videog =
    videog.genres


getVideogameGenres : List Videogame -> List (List String)
getVideogameGenres listajue =
    List.map videogameGenres listajue


type alias Computer =
    { ram : String
    , model : String
    , brand : String
    , screenSize : String
    }


myLaptop : Computer
myLaptop =
    { ram = "8GB"
    , model = "M1"
    , brand = "Macbook Air"
    , screenSize = "2560 x 1600"
    }


main : Html.Html msg
main =
    Html.div []
        [ Html.h1 []
            [ Html.text "My laptop"
            ]
        , Html.div []
            [ Html.ul []
                [ Html.li []
                    [ Html.text ("Ram: " ++ myLaptop.ram)
                    ]
                , Html.li []
                    [ Html.text ("Modelo: " ++ myLaptop.model)
                    ]
                , Html.li []
                    [ Html.text ("Marca: " ++ myLaptop.brand)
                    ]
                , Html.li []
                    [ Html.text ("Pulgadas: " ++ myLaptop.screenSize)
                    ]
                ]
            ]
        ]
