
## Modular Program Syntax and Semantics

### Luc Duponcheel, 30 minutes

This talk is about *modular program syntax and semantics*.

The approach is similar to the one in the *Functional Programming in Scala*
book (Part 4), but, in a way, it takes a different approach by also considering
the *applicative functor operations* as language composition primitives.

In general, the talk is, roughly speaking, about the separation of
 - syntax: the *description* of programs as data structures
 - semantics: the *meaning* of those programs often (but not necessarily) as
   executable algorithms
 
In particular, this talk is, roughly speaking, about the separation of
 - effects (program syntax *describes* them)
 - side effects (program *semantics* executes them)

The talks emphasises the fact that applicative functor based descriptions,
being more abstract, allow for more meanings being attached to them.

The talk also, briefly, goes into a discussion about referential transparancy.

