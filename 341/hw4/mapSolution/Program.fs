module mapSolution.Main

let runTests = true

let greater x y = if x > y then x else y
let lesser x y = if x < y then x else y
let add x y = x + y
let one x = 1.0
let diffSquared x y = (x - y) * (x - y)
let addWeightedScores w1 w2 w3 x y z  = x * w1 + y * w2 + z * w3

let maximum L =
    List.reduce greater L
    
let minimum L =
    List.reduce lesser L 

let length (L) =
    let L2 = List.map one L
    List.reduce add L2

let sum (L) =
    List.reduce add L
    
let average (L) =
    sum (L) / length (L)

let weightedTotals (L1, L2, L3) =
    List.map3 (addWeightedScores 0.3 0.3 0.4) L1 L2 L3

let standardDeviation (L) =
    let avg = average(L)
    let ds = diffSquared avg
    System.Math.Sqrt (sum(List.map ds L) / length(L))

let readFile(fn) =
    [ for word in System.IO.File.ReadAllLines(fn) -> word ]

let mapLines (listOfStrings) =
    List.map System.Double.Parse listOfStrings
    
let readAndParseLines (fileName) =
    mapLines (readFile(fileName))
    
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

[<EntryPoint>]
let main args = 
    let exam1 = readAndParseLines("exam1.txt")
    let exam2 = readAndParseLines("exam2.txt")
    let final = readAndParseLines("final.txt")
    let finalScores = weightedTotals(exam1, exam2, final)
    
    if runTests 
      then
        assertEqual(float exam1.Length, length(exam1), "The length of the value should equal the built-in length.")
        assertNotEqual(100.0, length(exam1), "The length of the value should not equal a randomly chosen number.")
    
        assertEqual([90.0; 100.0; 50.0], exam1, "The list of data for exam1 should be a list of integers")
        assertEqual([90.0; 100.0; 70.0], exam2, "The list of data for exam2 should be a list of integers")
        assertEqual([100.0; 60.0; 90.0], final, "The list of data for the final should be a list of integers")


        assertEqual(100.0, maximum(final), "The maximum value of the final should be 100.0.")
        assertEqual(60.0, minimum(final), "The minimum value of the final should be 60.0.")
        assertEqual(List.average (final), average(final), "The average of the final should be 250/3.")
        assertEqual(List.average (finalScores), average(finalScores), "The average of the finalScores should be 250/3.")
    
        assertEqual(2.0, standardDeviation([2.0; 4.0; 4.0; 4.0; 5.0; 5.0; 7.0; 9.0]), "The standard deviation of the sample list should be 2.0.")
        printfn ""
 
    printfn "** Final Scores **"
    printList(finalScores)
    printfn "** Statistics **"
    printfn "Average: %.1f" (average(finalScores))
    printfn "Standard Deviation: %.1f" (standardDeviation(finalScores))
    printfn "Maximum: %A" (maximum(finalScores))
    printfn "Minimum: %A" (minimum(finalScores))
    0
