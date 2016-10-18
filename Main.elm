module Main exposing (..)

import ExerciseRunner exposing (..)
import Html exposing (Html)
import Html.Attributes
import String


--
-- Strings
--


sayHello : String -> String
sayHello friendsName =
    "TODO: implement me"


formatPhoneNumber : String -> String -> String -> String
formatPhoneNumber areaCode exchange local =
    -- desired format: (999) 999-9999
    "TODO: implement me"


initials : String -> String -> String
initials firstName lastName =
    -- HINT: look at http://package.elm-lang.org/packages/elm-lang/core/latest/String for useful functions
    "TODO: implement me"


pigLatin : String -> String
pigLatin word =
    -- To go from English to pig latin, take the first letter of the word
    -- and put it at the end of the word, followed by an "ay" sound.
    -- Pig latin, in pig latin, is "Ig-pay atin-lay"
    -- For this exercise, just worry about producing a single word in pig latin.
    "TODO: implement me"



--
-- If Statements
--


isGreaterThanTen : Int -> Bool
isGreaterThanTen x =
    -- TODO: implement me
    False


howHotIsThePepper : Float -> String
howHotIsThePepper heatUnits =
    "TODO: implement me"



--
-- Lists
--


reverseTheList : List a -> List a
reverseTheList inputList =
    -- TODO: return the reversed inputList
    -- HINT: look at http://package.elm-lang.org/packages/elm-lang/core/latest/List for useful functions
    []


addOne : List Int -> List Int
addOne inputList =
    -- TODO: add one to every item in the list
    []


removeOs : List String -> List String
removeOs inputList =
    -- TODO: remove all entries that start with "O"
    []



--
-- Records
--


type alias Person =
    { name : String, age : Int }


newborn : String -> { name : String, age : Int }
newborn name =
    -- TODO: fix me
    { name = "", age = -1 }


ageDifference : { name : String, age : Int } -> { name : String, age : Int } -> Int
ageDifference person1 person2 =
    -- TODO: fix me
    0


nameChange : String -> { name : String, age : Int } -> { name : String, age : Int }
nameChange newName person =
    -- TODO: fix me
    person


getOlder : { name : String, age : Int } -> { name : String, age : Int }
getOlder person =
    -- TODO: fix me
    person


combinedYears : List { name : String, age : Int } -> Int
combinedYears people =
    -- TODO: fix me
    0



--
-- Tuples
--


signAndMagnitude : Int -> ( String, Int )
signAndMagnitude x =
    -- TODO: implement me
    ( "TODO", 0 )



--
-- Congratulations!  You've finished!
--
--
--
--
-- There's no need to look below this line (unless you are curious)
--


main : Html Never
main =
    Html.div [ Html.Attributes.style [ ( "padding", "20px" ) ] ]
        [ fontStyles
        , Html.h2 [] [ Html.text "Strings" ]
        , viewFunctionExample1 "sayHello"
            sayHello
            [ ( "Jasmine", "Hello, Jasmine" )
            , ( "Jean", "Hello, Jean" )
            ]
        , viewFunctionExample3 "formatPhoneNumber"
            formatPhoneNumber
            [ ( ( "347", "489", "4608" ), "(347) 489-4608" )
            , ( ( "800", "555", "2368" ), "(800) 555-2368" )
            ]
        , viewFunctionExample2 "initials"
            initials
            [ ( ( "Ada", "Yonath" ), "AY" )
            , ( ( "Kimberlé", "Crenshaw" ), "KC" )
            , ( ( "Dorothy", "Hodgkin" ), "DH" )
            ]
        , viewFunctionExample1 "pigLatin"
            pigLatin
            [ ( "Pig", "Ig-pay" )
            , ( "Latin", "Atin-lay" )
            ]
        , Html.h2 [] [ Html.text "If Statements" ]
        , viewFunctionExample1 "isGreaterThanTen"
            isGreaterThanTen
            [ ( 13, True )
            , ( 3, False )
            , ( 10, False )
            ]
        , viewFunctionExample1 "howHotIsThePepper"
            howHotIsThePepper
            [ ( 2, "not hot" )
            , ( 100, "mild" )
            , ( 3000, "medium" )
            , ( 50000, "hot" )
            ]
        , Html.h2 [] [ Html.text "Lists" ]
        , viewFunctionExample1 "reverseTheList"
            reverseTheList
            [ ( [ 7, 0, 1, 4, 9 ], [ 9, 4, 1, 0, 7 ] )
            , ( [ 99, -1 ], [ -1, 99 ] )
            ]
        , viewFunctionExample1 "addOne"
            addOne
            [ ( [ 7, 0, 1, 4, 9 ], [ 8, 1, 2, 5, 10 ] )
            , ( [ 99, -1 ], [ 100, 0 ] )
            ]
        , viewFunctionExample1 "removeOs"
            removeOs
            [ ( [ "Jessie", "Anibus", "Osirus" ], [ "Jessie", "Anibus" ] )
            , ( [ "Apple", "Banana" ], [ "Apple", "Banana" ] )
            , ( [ "Octothorpe", "Octohash" ], [] )
            ]
        , Html.h2 [] [ Html.text "Records" ]
        , viewFunctionExample1 "newborn"
            newborn
            [ ( "Jenny", { name = "Jenny", age = 0 } )
            , ( "Abey", { name = "Abey", age = 0 } )
            ]
        , viewFunctionExample2 "ageDifference"
            ageDifference
            [ ( ( { name = "Nicole", age = 40 }, { name = "Angel", age = 30 } ), 10 )
            , ( ( { name = "Igor", age = 18 }, { name = "Alexei", age = 23 } ), 5 )
            ]
        , viewFunctionExample2 "nameChange"
            nameChange
            [ ( ( "Mr. T", { name = "Laurence", age = 34 } ), { name = "Mr. T", age = 34 } )
            , ( ( "Demi", { name = "Demetria", age = 17 } ), { name = "Demi", age = 17 } )
            , ( ( "Ƭ̵̬̊", { name = "Prince", age = 35 } ), { name = "Ƭ̵̬̊", age = 35 } )
            ]
        , viewFunctionExample1 "getOlder"
            getOlder
            [ ( { name = "Jenny", age = 0 }, { name = "Jenny", age = 1 } )
            , ( { name = "Igor", age = 18 }, { name = "Igor", age = 19 } )
            ]
        , viewFunctionExample1 "combinedYears"
            combinedYears
            [ ( [ { name = "Ruth Bader Ginsburg", age = 83 }
                , { name = "Gloria Allred", age = 75 }
                , { name = "Caroline Kennedy", age = 58 }
                ]
              , 216
              )
            , ( [ { name = "Amy Poehler", age = 45 }
                , { name = "Chris Pratt", age = 37 }
                , { name = "Rashida Jones", age = 40 }
                , { name = "Aziz Ansari", age = 33 }
                , { name = "Retta", age = 46 }
                ]
              , 201
              )
            ]
          -- , Html.h2 [] [ Html.text "HTML" ]
        , Html.h1 [] [ Html.text "Bonus Sections" ]
        , Html.h2 [] [ Html.text "Tuples" ]
        , viewFunctionExample1 "signAndMagnitude"
            signAndMagnitude
            [ ( -7, ( "-", 7 ) )
            , ( 3, ( "+", 3 ) )
            , ( 10, ( "+", 10 ) )
            , ( -44, ( "-", 44 ) )
            ]
          -- , Html.h2 [] [ Html.text "Union types" ]
          -- , Html.h2 [] [ Html.text "Case statements" ]
          -- , Html.h2 [] [ Html.text "Maybes" ]
          -- , Html.h2 [] [ Html.text "Complex case statements" ]
          -- , Html.h2 [] [ Html.text "Dictionaries" ]
        ]
