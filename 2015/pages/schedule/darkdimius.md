Dotty is a platform to try out new language concepts and compiler technologies
for Scala. Learning from experiences with scalac extensibility, we have made a
huge step forward making dotc a true pleasure to work with. This talk will be
an introduction to internals of Dotty compiler.

Dotty compiler transformation pipeline is based on the notions of Mini-Phases
and InfoTransformers. These abstractions allow to modularize code
transformations without sacrificing performance. Currently Dotty pipeline has
more than 40 very finely grained mini-phases, compared to 25 in scalac, and
this number is likely to increase.

Mini-Phases constitute transformations of trees, which can be efficiently
pipelined, as they share a single Tree traversal. Comparing with scalac, if you
were to write a non-trivial phase in your compiler plugin, you will need a
separate traversal of tree, slowing down the compilation. Unlike this, in Dotty
you define a mini-phase, that typically doesn't trigger extraneous traversals.

InfoTransformers define transformations of symbols and their types. These
transformations apply lazily, and transparently maintain versioned history of
the information associated with symbols.

Finally, Dotty has strong self-verification framework, that ensures that after
every phase the state of internal data structures of compiler is consistent.

This talk will introduce all those notions, showing interactions between them.
We will follow Dotty code and see how are they used. In the second half of the
talk we will implement a Mini-phase, to demonstrate how all this notions are
used.

