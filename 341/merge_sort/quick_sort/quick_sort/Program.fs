// William Montgomery
// CS 341 - Fall 2013
// Homework 5 - Implementing a sorting algorithm in F#
// 
// First I implemented merge sort, but could not realize the
// needed performance gain.
// I then decided to implement bucket sort. I'm not sure if this
// fallse under the guidelines of the assignment, as it is not a comparison 
// based search and it only works for integers.  However, it does show the
// posibility for parallel processing.  I do see a marked performance gain
// over the in-class quicksort.
#light

open System

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
// timeit function: times the application of function F to list L, 
// returning the result of F(L)
//
let timeit message F L = 
  let start = System.Environment.TickCount
  let result = F L
  let stop = System.Environment.TickCount
  let time = stop - start
  printfn "%A: %A elements, time %A ticks" message (List.length L) time
  result
  

//
// generate a random list of length n:
//
let ran = new System.Random()

let rec dogen N L =
  match N with
  | 0 -> L
  | _ -> dogen (N-1) (ran.Next()::L)

let genlist N = 
  dogen N []


// 
let gt x y = x <= y
let lte x y = x > y

let rec quicksort L =
    match L with 
    | [] -> []
    | [E] -> [E]
    | _ ->
        quicksort(List.filter (lte L.Head) L.Tail) @ [L.Head] @ quicksort(List.filter (gt L.Head) L.Tail)

// Bucket sort
let buckethelper divisor bucket x = 
    bucket = x / divisor % 10

let rec putInBuckets L pass power =
    match L, pass with
    | _, 0 -> L
    | [], _ -> []
    | _, _ ->
        // This section could be run in parallel
        let L0 = List.filter (buckethelper power 0) L
        let L1 = List.filter (buckethelper power 1) L
        let L2 = List.filter (buckethelper power 2) L
        let L3 = List.filter (buckethelper power 3) L
        let L4 = List.filter (buckethelper power 4) L
        let L5 = List.filter (buckethelper power 5) L
        let L6 = List.filter (buckethelper power 6) L
        let L7 = List.filter (buckethelper power 7) L
        let L8 = List.filter (buckethelper power 8) L
        let L9 = List.filter (buckethelper power 9) L
        putInBuckets (L0 @ L1 @ L2 @ L3 @ L4 @ L5 @ L9) (pass - 1) (power * 10)
        
let bucketsort L = 
    match L with 
    | [] -> []
    | _ ->
        let max = List.max L 
        let digits = int (Math.Log10 (float max)) + 1
        putInBuckets L digits 1
        
let reverse L =
    List.rev L
//
// Main:
//
printfn ""
printfn "** Lists **"
printfn ""
let list1 = [ "mom"; "dad"; "cat"; "pizza"; "zizza"; "song"; "apple"]
let list2 = genlist 1000000
printfnList list1
printfnList list2

printfn ""
printfn ""

printfn "** Built-in Sort **"
printfn ""
let R1 = timeit "List.sort" List.sort list1
printfnList R1

printfn ""

let R2 = timeit "List.sort" List.sort list2
printfnList R2

let R3 = timeit "quicksort" quicksort list2
printfnList R3
printfn "%A" (R2 = R3)

let R5 = timeit "bucketsort" bucketsort list2
printfnList R5
printfn "%A" (R5 = R2)

