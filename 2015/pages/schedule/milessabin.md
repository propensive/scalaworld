Automatic typeclass derivation allows instances of a wide variety of useful
typeclasses to be derived for Scala ADTs with no (or at most minimal)
boilerplate. Built on shapeless's core generic programming primitives, it has
come a long way since it was first introduced in shapeless 2.0.0 at the
beginning of 2013 by Lars Hupel.

Recent developments have broadened the range of ADT-like data types which
typeclass instances can be derived for. They have also expanded the range of
typeclasses which can be derived to include more complex recursion patterns and
to allow specialized instances for particular types to be incorporated in the
derivation. Still more recently, support has been added for the derivation of
typeclasses, like Functor, which are indexed by higher kinded types.

This means that we can now derive instances for the full range of typeclasses
included in the Cats library of abstractions for functional programming in
Scala. This is what we are doing in kittens, a new library combining shapeless
and Cats which I will describe in this talk.

