signature COMB = sig
  datatype comb = B | C | K | W
  type var
  datatype expr = Var of var | Comb of comb | App of expr * expr

  val toString : expr -> string
end

structure Comb : COMB = struct
  datatype comb = B | C | K | W
  type var = string
  datatype expr = Var of var | Comb of comb | App of expr * expr

  fun toString expr =
    case expr of
      Var v => v
    | Comb c => (case c of B => "B" | C => "C" | K => "K" | W => "W")
    | App (e1, e2 as App _) => toString e1 ^ " (" ^ toString e2 ^ ")"
    | App (e1, e2) => toString e1 ^ " " ^ toString e2
end
