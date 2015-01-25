//
// Word generation and scoring program.
//
// William Montgomery
// U. of Illinois, Chicago
// CS341, Fall 2013
// Homework 6
//
#light
open System


let runTests = true
//
// printf 1 element:
//
let printf1 a = 
  printf "%A; " a

//
// printfn a list: if the list is long, we print first 3 ... last 3:
//
let doprintFirst3 L = 
  printf "%A; %A; %A;" (List.nth L 0) (List.nth L 1) (List.nth L 2)
  
let doprintLast3 L = 
  let len = List.length L
  printf "%A; %A; %A;" (List.nth L (len-3)) (List.nth L (len-2)) (List.nth L (len-1))

let doprint L =
  if List.length L < 10 then
    ignore (List.map printf1 L)
  else
    doprintFirst3 L
    printf " ...; "
    doprintLast3 L

let printfnList L = 
  printf "%A: " (List.length L)
  printf "[ "
  doprint L
  printfn " ]"

//
// explode a string into a list of characters.
// Example: "cat" -> ['c'; 'a'; 't']
//
let explode2c (s:string) = 
    [ for c in s -> c ]
//
// explode a string into a list of 1-char strings.
// Example: "cat" -> ["c"; "a"; "t"]
//
let explode2s (s:string) = 
    [ for c in s -> c.ToString() ]


// read in a file
let readFile(fn) =
    [ for word in System.IO.File.ReadAllLines(fn) -> word ]

let mapLines (listOfStrings) =
    List.map System.Double.Parse listOfStrings
    
let readAndParseLines (fileName) =
    mapLines (readFile(fileName))


// Compare two strings
let rec compareChars c1 c2 =
    match c1, c2 with
    | [], [] -> true
    | [], _ -> false
    | _, [] -> true
    | _, _ when c1.Head = c2.Head -> compareChars c1.Tail c2.Tail
    | _, _ -> compareChars c1.Tail c2
    
// w1 is the base word
// w2 is the word being tested
let compareWords w1 w2 =  
    let chars1 = List.sort (explode2c(w1))
    let chars2 = List.sort (explode2c(w2))
    compareChars chars1 chars2
    
let allWords letters file =
    let wordList = readFile(file)
    List.filter (compareWords letters) wordList

let scoreLetter l =
    match l with
    | _ when l = 'd' || l = 'g' -> 2
    | _ when l = 'b' || l = 'c' || l = 'm' || l = 'p' -> 3
    | _ when l = 'f' || l = 'h' || l = 'v' || l = 'w' || l = 'y' -> 4
    | _ when l = 'k' -> 5
    | _ when l = 'j' || l = 'x' -> 8
    | _ when l = 'q' || l = 'z' -> 10
    | _ -> 1

let scoreWord word = 
    (word, List.sum (List.map scoreLetter (explode2c(word))))


let allScoredWords letters file =
    let listOfAllWords = allWords letters file
    let scoredList = List.map scoreWord listOfAllWords
    List.sortBy (fun elem -> match elem with x, y -> y * -1) scoredList
        
//////////////////////////////////////////////////
// Testing functions
//////////////////////////////////////////////////
let assertEqual (x, y, explanation) = 
    if (x <> y)
        then
            printf "Test failed! "
            printfn explanation
            printfn "x = %A" x
            printfn "y = %A" y
            printfn ""
        else printf "."

let assertNotEqual (x, y, explanation) = 
    if (x = y)
        then
            printf "Test failed! "
            printfn explanation
            printfn "x = %A" x
            printfn "y = %A" y
            printfn ""
        else printf "."

let rec printList (L) =
    match L with
    | [] -> printfn ""
    | _ ->
        printfn "%A" L.Head
        printList (L.Tail)

//////////////////////////////////////////////////
// Testing
//////////////////////////////////////////////////



if runTests
    then
        assertEqual(compareWords "abcd" "abc", true, "The string abc should be able to be made from abcd")
        assertEqual(compareWords "abc" "abcd", false, "The string abcd should not be able to be made from abc")
        assertEqual(compareWords "abc" "abc", true, "A string should be able to be made from itself")
        assertEqual(compareWords "" "a", false, "No string should be made from an empty string")
        assertEqual(List.length (allWords "qwzuthrenn" "dictionary.txt"), 67, "The letters 'qwzuthrenn' should generated 67 words")
        assertEqual(List.head (allScoredWords "qwzuthrenn" "dictionary.txt"), ("hertz", 17), "The highest value for 'qwzuthrenn' should be hertz with value 17")
        printfn ""                


//////////////////////////////////////////////////
// Main:
//////////////////////////////////////////////////
printfn ""
printf "Please enter 1 or more letters> "
let letters = Console.ReadLine()
printfn ""
printfn "** Words: **"
printfn "%A" (allWords letters "dictionary.txt")
printfn ""
printfn "** Scored Words: **"
printfn "%A" (allScoredWords letters "dictionary.txt")
printfn ""
printfn ""

