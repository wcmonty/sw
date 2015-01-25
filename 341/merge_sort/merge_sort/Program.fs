#light
let rec merge (L1:'a list, L2:'a list, listSoFar:'a list) = 
    match (L1, L2) with
    | (x, y) when x.IsEmpty && y.IsEmpty -> listSoFar
    | (x, y) when x.IsEmpty -> listSoFar @ L2
    | (x, y) when y.IsEmpty -> listSoFar @ L1
    | (x, y) when x.Head < y.Head -> merge(L1, L2.Tail, listSoFar @ [L2.Head])
    | _ -> merge(L1.Tail, L2, listSoFar @ [L1.Head])

let rec split (left:'a list, right:'a list) =
    match (left, right) with
    | (x, y) when x.IsEmpty && y.IsEmpty -> [], []
    | (x, y) when x.Length = y.Length || x.Length = y.Length + 1 -> left, right
    | (x, y) when x.Length > y.Length -> split(left.Tail, [left.Head] @ right)
    | _ -> split([right.Head] @ left, right.Tail)

let rec sortR (L) =
    match L with
    | [] -> []
    | [E] -> [E]
    | _ ->
        let right, left = split(L, [])
        let sortedLeft = sortR(left)
        let sortedRight = sortR(right)
        merge(sortedLeft, sortedRight, [])

let mergesort L = 
    List.rev (sortR L)


let T13 = (mergesort([10; 3; 44; 1; 20]) = [1; 3; 10; 20; 44])
let T14 = (merge([8; 6; 4; 2], [7; 5; 3], []) = [8; 7; 6; 5; 4; 3; 2])


printfn "%A" T13
printfn "%A" T14
printfn "%A" (mergesort([10; 3; 44; 1; 20]))
