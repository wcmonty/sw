let rec length_recursive(l:'a list, length_so_far:int) = 
    match l with
    | [] -> length_so_far
    | _ -> length_recursive(l.Tail, length_so_far + 1)

let length (l:'a list) =
    length_recursive(l, 0)

let E1 = length([1; 2; 3])
printfn "%A" E1