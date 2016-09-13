# Staged Parser Combinators

In this talk I present [parsequery](https://github.com/manojo/parsequery). It
uses [staging](http://manojo.github.io/2015/09/02/staged-parser-combinators) to
remove composition overhead at compile time to produce efficient, fast parsers.
Its interface is almost similar to [Scala's parser
combinators](https://github.com/scala/scala-parser-combinators).

The main goal of `parsequery` is to _systematically_ eliminate all intermediate
data structures that are creating when running a traditional parser combinator
program. Typically, parser combinators interleave _static_ composition of
parsers with  the _dynamic_ act of parsing itself, at runtime. The key insight
is that we can fully decouple the static parts from the dynamic one.

The presentation will go over the theory behind it, and how to leverage Scala
macros and quasiquotes to implement this optimisation as a library.
