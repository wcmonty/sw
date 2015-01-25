module merge.Main
#light

let rec isMember (e, L:'a list) =
    match L with
    | x when x.IsEmpty -> false
    | x when x.Head = e -> true
    | _ -> isMember(e, L.Tail)

let rec memberCountRecursive (e, L:'a list, countSoFar) =
    match L with
    | x when x.IsEmpty -> countSoFar
    | x when x.Head = e -> memberCountRecursive(e, L.Tail, countSoFar + 1)
    | _ -> memberCountRecursive(e, L.Tail, countSoFar)
    
let memberCount (e, L:'a list) =
    memberCountRecursive(e, L, 0)

let F x y = if x = y then 1 else 0

let F2 x y = x + y

let memberCount2 (e, L:'a list) =
    let L2 = List.map (F e) L 
    let count = List.reduce F2 L2
    count
            
let rec removeFirstRecursive (e, L:'a list, listSoFar:'a list) =
    match L with
    | [] -> listSoFar
    | x when L.Head = e -> listSoFar @ L.Tail
    | _ -> removeFirstRecursive(e, L.Tail, listSoFar @ [L.Head])
    
let removeFirst (e, L:'a list) = 
    removeFirstRecursive(e, L, [])

let rec removeAllRecursive (e, L:'a list, listSoFar:'a list) =
    match L with
    | x when x.IsEmpty -> listSoFar
    | x when x.Head = e -> removeAllRecursive(e, L.Tail, listSoFar)
    | _ -> removeAllRecursive(e, L.Tail, listSoFar @ [L.Head])
            
let removeAll (e, L:'a list) =
    removeAllRecursive (e, L, [])

let F3 x y = x <> y

let removeAll2 (e, L) =
    List.filter (F3 e) L

let rec merge (L1:'a list, L2:'a list, listSoFar:'a list) = 
    match (L1, L2) with
    | (x, y) when x.IsEmpty && y.IsEmpty -> listSoFar
    | (x, y) when x.IsEmpty -> listSoFar @ L2
    | (x, y) when y.IsEmpty -> listSoFar @ L1
    | (x, y) when x.Head > y.Head -> merge(L1, L2.Tail, listSoFar @ [L2.Head])
    | _ -> merge(L1.Tail, L2, listSoFar @ [L1.Head])

let rec split (left:'a list, right:'a list) =
    match (left, right) with
    | (x, y) when y.IsEmpty -> [], []
    | (x, y) when x.Length >= y.Length -> left, right
    | _ -> split(left @ [right.Head], right.Tail)

let rec sort (L) =
    match L with
    | [] -> []
    | [E] -> [E]
    | _ ->
        let right, left = split([], L)
        let sortedLeft = sort(left)
        let sortedRight = sort(right)
        merge(sortedLeft, sortedRight, [])

let T1 = (isMember(1, [1; 2; 3]) = true)
let T2 = (isMember("c", ["a"; "b"; "c"]) = true)
let T3 = (isMember("d", ["a"; "b"; "c"]) = false)
let T4 = (memberCount(1, [1; 2; 3]) = 1)
let T5 = (memberCount(1, [99; 2; 3; 99]) = 0)
let T6 = (memberCount(99, [99; 99; 2; 3; 99]) = 3)
let T42 = (memberCount2(1, [1; 2; 3]) = 1)
let T52 = (memberCount2(1, [99; 2; 3; 99]) = 0)
let T62 = (memberCount2(99, [99; 99; 2; 3; 99]) = 3)
let T7 = (removeFirst(1, [1; 2; 3; 1]) = [2; 3; 1])
let T8 = (removeFirst(1, [99; 2; 1; 3]) = [99; 2; 3])
let T9 = (removeFirst(0, [1; 2; 3]) = [1; 2; 3])
let T10 = (removeAll(1, [1; 2; 3; 1]) = [2; 3])
let T11 = (removeAll(99, [99; 99; 99]) = [])
let T12 = (removeAll(0, [1; 2; 3]) = [1; 2; 3])
let T102 = (removeAll2(1, [1; 2; 3; 1]) = [2; 3])
let T112 = (removeAll2(99, [99; 99; 99]) = [])
let T122 = (removeAll2(0, [1; 2; 3]) = [1; 2; 3])
let T13 = (sort([10; 3; 44; 1; 20]) = [1; 3; 10; 20; 44])
let T14 = (merge([1; 2; 3; 6], [2; 5; 8], []) = [1; 2; 2; 3; 5; 6; 8])
let T15 = ([1; 2; 3], [5; 6; 7]) = (split([], [1; 2; 3; 5; 6; 7]))
let T16 = ([1; 2; 3; 4], [5; 6; 7]) = (split([], [1; 2; 3; 4; 5; 6; 7]))


[<EntryPoint>]
let main args = 
    printfn "%A" T1
    printfn "%A" T2
    printfn "%A" T3
    printfn "%A" T4
    printfn "%A" T5
    printfn "%A" T6
    printfn "%A" T42
    printfn "%A" T52
    printfn "%A" T62
    printfn "%A" T7
    printfn "%A" T8
    printfn "%A" T9
    printfn "%A" T10
    printfn "%A" T11
    printfn "%A" T12
    printfn "%A" T102
    printfn "%A" T112
    printfn "%A" T122
    printfn "%A" T13
    printfn "%A" T14
    printfn "%A" T15
    printfn "%A" T16
    printfn "%A" (split([], [1; 2; 3; 4; 5; 6; 7]))
    
    0

