
// NOTE: If warnings appear, you may need to retarget this project to .NET 4.0. Show the Solution
// Pad, right-click on the project node, choose 'Options --> Build --> General' and change the target
// framework to .NET 4.0 or .NET 4.5.

module gradeStatistics.Main

#light

let runTests = false

let rec numberOfElementsRecursive(L, elementsSoFar) =
    match L with
    | [] -> elementsSoFar
    | _ -> numberOfElementsRecursive(L.Tail, elementsSoFar + 1.0)

let numberOfElements(L) =
    match L with
    | [] -> 0.0
    | _ -> numberOfElementsRecursive(L, 0.0)

let totalScore (x, y, z) = x * 0.3 + y * 0.3 + z * 0.4

let rec calculateTotalsRecursive (L1:float list, L2:float list, L3:float list, listSoFar:float list) = 
    match L1 with
    | [] -> listSoFar // We know that the lists are the same size, so we don't need to check them here
    | _ -> calculateTotalsRecursive(L1.Tail, L2.Tail, L3.Tail, listSoFar @ [totalScore(L1.Head, L2.Head, L3.Head)])

let calculateTotals (L1:float list, L2:float list, L3:float list) =
    match (L1, L2, L3) with
    | (x, y, z) when x.IsEmpty && y.IsEmpty && z.IsEmpty -> []
    | (x, y, z) when x.IsEmpty || y.IsEmpty || z.IsEmpty -> []
    | (x, y, z) when numberOfElements(x) <> numberOfElements(y) || numberOfElements(y) <> numberOfElements(z) -> [] 
    | _ -> calculateTotalsRecursive(L1, L2, L3, [])

let rec sumListRecursive(L, sumSoFar) =
    match L with
    | [] -> sumSoFar
    | _ -> sumListRecursive(L.Tail, L.Head + sumSoFar)

let sumList(L) =
    sumListRecursive(L, 0.0)

let average (L) =
    sumList(L) / numberOfElements(L)

let diffSquared x y = (x - y) * (x - y)

let standardDeviation (L) =
    match L with
    | [] -> 0.0
    | _ -> System.Math.Sqrt (sumList(List.map (diffSquared (average(L))) L) / numberOfElements(L))

let greaterValue (x, y) = 
    if (x > y) then x else y
    
let lesserValue (x, y) = 
    if (x < y) then x else y

let rec minimumRecursive(L, minSoFar) =
    match L with
    | [] -> minSoFar
    | _ -> minimumRecursive(L.Tail, lesserValue (minSoFar, L.Head))  

let minimum (L) = 
    match L with
    | [] -> 0.0
    | _ -> minimumRecursive(L.Tail, L.Head)

let rec maximumRecursive(L, maxSoFar) =
    match L with
    | [] -> maxSoFar
    | _ -> maximumRecursive(L.Tail, greaterValue (maxSoFar, L.Head))  

let maximum (L) = 
    match L with
    | [] -> 0.0
    | _ -> maximumRecursive(L.Tail, L.Head)

let rec lengthRecursive (L, lengthSoFar) =
    match L with
    | [] -> lengthSoFar
    | _ -> lengthRecursive(L.Tail, lengthSoFar + 1)

let length (L) =
    lengthRecursive(L, 0)

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
    let finalScores = calculateTotals(exam1, exam2, final)
    
    if runTests 
      then
        assertEqual(exam1.Length, length(exam1), "The length of the value should equal the built-in length.")
        assertNotEqual(100, length(exam1), "The length of the value should not equal a randomly chosen number.")
    
        assertEqual([90.0; 100.0; 50.0], exam1, "The list of data for exam1 should be a list of integers")
        assertEqual([90.0; 100.0; 70.0], exam2, "The list of data for exam2 should be a list of integers")
        assertEqual([100.0; 60.0; 90.0], final, "The list of data for the final should be a list of integers")


        assertEqual(100.0, maximum(final), "The maximum value of the final should be 100.0.")
        assertEqual(60.0, minimum(final), "The minimum value of the final should be 60.0.")
        assertEqual((250.0/3.0), average(final), "The average of the final should be 250/3.")
        assertEqual((250.0/3.0), average(final), "The average of the final should be 250/3.")
    
        assertEqual(2.0, standardDeviation([2.0; 4.0; 4.0; 4.0; 5.0; 5.0; 7.0; 9.0]), "The standard deviation of the sample list should be 2.0.")
        printfn ""
 
    printfn "** Final Scores **"
    printList(finalScores)
    printfn "** Statistics **"
    printfn "Average: %.1f" (average(final))
    printfn "Standard Deviation: %.1f" (standardDeviation(final))
    printfn "Maximum: %A" (maximum(finalScores))
    printfn "Minimum: %A" (minimum(finalScores))
    0
