//
// F# functions for:
//		finding the first N in a list in an unsafe manner
//		finding the first N in a list in a safe manne
//		multplying two equal length lists together to form a new list
//		checking to see if two lists are equal (not using built-in =)
//
//  William Montgomery
//  University of Illinois, Chicago
//  CS 341, Fall 2013
//  Homework 3
//
module hw3.Main

open System

let X = 10
let under = X - 5
let over = X + 5
let firstX = [0..X]
let moreX = [0..over]


/////////////////////////////////////////////////////////////////////////
// Function Definitions Start
/////////////////////////////////////////////////////////////////////////
let rec firstNRecursiveUnsafe (l:'a list, f: int, listSoFar: 'a list) = 
    match f with
    | 0 -> listSoFar
    | _ -> firstNRecursiveUnsafe(l.Tail, f - 1, listSoFar @ [l.Head])

let firstNunsafe (l:'a list, f: int) =
    firstNRecursiveUnsafe(l, f, [])
   
let rec firstNRecursive (l:'a list, f: int, listSoFar: 'a list) = 
    match (f, l) with
    | (x, y) when x = 0 -> listSoFar
    | (x, y) when y.IsEmpty -> listSoFar
    | _ -> firstNRecursive(l.Tail, f - 1, listSoFar @ [l.Head])

let firstN (l:'a list, f: int) =
    firstNRecursive(l, f, [])

let rec vectorMultiplyRecursive (l1:'int list, l2:'int list, listSoFar:'int list) =
    match l1 with
    | [] -> listSoFar
    | _ -> vectorMultiplyRecursive (l1.Tail, l2.Tail, listSoFar @ [l1.Head * l2.Head])

let vectorMultiply(l1:'int list, l2:'int list) =
    vectorMultiplyRecursive (l1, l2, [])

let rec equal (l1:'a list, l2:'a list) =
    match (l1, l2) with
    | (x, y) when x.IsEmpty && y.IsEmpty -> true
    | (x, y) when x.IsEmpty -> false
    | (x, y) when y.IsEmpty -> false
    | (x, y) when x.Head <> y.Head -> false
    | _ -> equal(l1.Tail, l2.Tail)

/////////////////////////////////////////////////////////////////////////
// Function Definitions End
/////////////////////////////////////////////////////////////////////////

[<EntryPoint>]
let main args =
    printf "The first %d elements (unsafe) are: " under
    printfn "%A" (firstNunsafe(firstX, under))

    printf "The first %d elements (safe) are: " under 
    printfn "%A" (firstN(firstX, under))
    
    printf "The first %d elements (safe) are: " over
    printfn "%A" (firstN(firstX, over))
    
    printf "The values multiplied is: "
    printfn "%A" (vectorMultiply(firstX, firstX))

    printf "A list should be equal to itself: "
    printfn "%A" (equal(firstX, firstX))
   
    printf "A list should not be equal to a longer list: "
    printfn "%A" (equal(firstX, moreX))
    
    printf "A list should not be equal to a shorter list: "
    printfn "%A" (equal(moreX, firstX))
    0

