[Idris](http://idris-lang.org/) is a general purpose pure functional
programming language with dependent types. In Idris, types are a first class
language construct, meaning that they can be manipulated and computed like any
other language construct. It encourages a type-driven style of development, in
which programmers give types first and use interactive editing tools to derive
programs. Introductory examples typically involve length-preserving operations
on lists, or ordering invariants on sorting.

Realistically, though, programming is not so simple: programs interact with
users, communicate over networks, manipulate state, deal with erroneous input,
and so on. In this talk I will show how advanced type systems allow us to
express such interactions precisely, and how they support verification of
stateful systems as a result.

The talk will include several examples, leading to a verified implementation of
a word game (Hangman). I will show how Type-driven Development allows
programmers to specify the game rules in a direct and concise style, and how it
leads to an implementation, guaranteed to correctly follow the rules by
typechecking.

