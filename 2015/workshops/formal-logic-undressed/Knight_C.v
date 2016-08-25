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
Variables A B C : native.
Hypothesis B_says : B says (A says ~Knight A).
Hypothesis C_says : C says ~Knight B.

(* Put the Theorem you want to prove here. *)
Theorem Knight_C : Knight C.
Proof. unfold _says in *. unfold not in *. 
  destruct C_says.
  destruct B_says.
  clear B_says.
  clear C_says.
  apply H0.
  intros.
  apply H1.
    assumption.
    destruct H1.
      assumption.
      apply H4.
      intros.
      apply H1.
        assumption. 
        assumption. 
    destruct H1.
      assumption.
      apply H4.
      intros.
      apply H1.
        assumption.
        assumption.
Qed.

End Formal_Logic_Undressed.
