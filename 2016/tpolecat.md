# Pure Functional Database Programming with Fixpoint Types

Recursive data types (directory structures, family trees, and so on) abound in programming and are especially easy to express and manipulate in functional languages. But some operations, like decorating a tree with arbitrary values or folding/unfolding in an effectful context end up being tricky. As is often the case, it turns out that there are some very powerful abstractions that emerge from examining such problems in detail.

In this talk I will motivate the use of fixpoint types by showing how `Fix` and `Cofree` pop out naturally if you push on recursive data a little bit, and will relate these types to the better-known `Free` monad. The motivating example is serialization of a tree structure to and from Postgres using [doobie](https://github.com/tpolecat/doobie), a pure functional database layer for Scala. Along the way we will review covariant and traversable functors, and will use equational reasoning and "follow the types" to manipulate database programs in the same way we work with everyday data.

The takeaway is a more general way of thinking about recursive types and recursive programs with effects, and renewed confidence in the power and ease of pure functional programming. This is an intermediate talk that assumes some familiarity with functional programming in Scala.

