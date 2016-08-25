Section Formal_Logic_Undressed.

(* There is a Set of natives. *)
  Variable native : Set.

(* "Knight" is a predicate (implies True or False) regarding a native. *)
  Variable Knight : native -> Prop.

(*
   A Knight saying a Prop(osition) implies the Proposition.
   A native saying a True Prop(osition) implies the native is a Knight.
*)
  Definition _says (n : native) (P : Prop) := Knight n <-> P.

(* A dash of syntactic sugar to make natives saying things nicer. *)
  Infix "says" := _says (at level 95).

(* Put puzzle Variables, Hypotheses, etc. here. *)

(* Put the Theorem you want to prove here. *)

End Formal_Logic_Undressed.
