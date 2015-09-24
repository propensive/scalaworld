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
Variables A B : native.
Hypothesis OneKnave : A says ~Knight A \/ ~Knight B.

(* Put the Theorem you want to prove here. *)
Theorem Knight_A : Knight A /\ ~Knight B.
Proof. unfold _says in *. unfold not in *. destruct OneKnave.
assert (Knight A).
  apply H0. right. intros. elim H; intros.
    apply H2. apply H0. left. contradiction.
    apply H2. assumption.
    apply H0. left. intros. elim H; intros.
      apply H3. assumption.
      apply H3. assumption.
      assumption.
  split.
    assumption.
    intros. elim H; intros.
      contradiction.
      contradiction.
      assumption.
Qed.

End Formal_Logic_Undressed.
