local
  open Comb
in
  val s = App (App (Comb B, App (Comb B, Comb W)), App (App (Comb B, Comb B), Comb C))
  val _ = print ("s := " ^ toString s ^ "\n")
end
