import Html exposing (..)
import Html.Attributes exposing (..)

-- MODEL

type alias Paragraph = {
  content : String,
  index: Int
  }

type alias Book = List Paragraph

initBook : Book
initBook = [
  Paragraph "some to read" 1,
  Paragraph "some to read 2" 2
  ]
paragraphing : Paragraph -> Html
paragraphing parg = 
   p [id (toString parg.index)][text parg.content]
  
view : Book -> Html
view book = 
  div [id "container"] [p [] (List.map paragraphing book)]

pageHeader = 
  h1 [] [text "Temario"]

main =
  view initBook
