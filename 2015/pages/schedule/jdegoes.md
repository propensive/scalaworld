In the Scala FP community, free monads are one of the fastest growing and
hottest ways to compose programs from small, modular, interpretable languages.
Yet, the trees described by free monads are dynamic: their structure depends on
runtime values, which limit the types of analysis one can do on these trees.
Free applicatives address this limitation by only permitting trees whose
structure can be described statically, independent from runtime values.

In this talk, John shows how this tradeoff enables extremely powerful
introspection and transformation of the very structure of a program, in ways
that are completely impossible with free monads.

