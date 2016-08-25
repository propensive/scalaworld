Scala.meta is a next-generation metaprogramming framework that is heavily based
on our experiences with designing and supporting scala.reflect. With
scala.meta, it is possible to efficiently carry out a wide range of
metaprogramming tasks: from purely syntactic transformations that preserve
low-level lexical details to powerful semantic code analyses that are aware of
the program structure.

With the upcoming 0.1 release, we're planning to provide a comprehensive and
platform-independent model of Scala programs. Every time a Scala program is
compiled with our compiler plugin enabled, we save its representation in the
TASTY format, which then can be loaded at any point - both at compile-time and
at runtime, enabling a novel technique that we call anytime metaprogramming.

In this talk, we will see a practical preview of features planned for 0.1. It
will become clear how to use scala.meta to analyze and rewrite code to
implement functionality that is very hard or outright impossible to achieve
with existing metaprogramming solutions.

