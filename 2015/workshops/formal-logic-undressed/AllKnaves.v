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
Variable Smokes : native -> Prop.
Hypothesis SameType : (forall n : native, Knight n) \/ (forall n : native, ~Knight n).
Hypothesis SomeoneElseSmokes : forall n : native, n says (exists o, Smokes o /\ ~Smokes n).

(* Put the Theorem you want to prove here. *)
Theorem AllKnaves : forall n : native, ~Knight n.
Proof. unfold _says in *. unfold not in *.
intros. destruct SameType.
  apply SomeoneElseSmokes in H. destruct H. destruct H. pose proof (H0 x) as KnightX. apply SomeoneElseSmokes in KnightX. destruct KnightX. destruct H2. contradiction.
  apply H0 in H. contradiction.
Qed.

End Formal_Logic_Undressed.
