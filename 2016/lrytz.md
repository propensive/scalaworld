# Tales from Compiling to the JVM

Scala 2.12 is around the corner! The main theme in 2.12 is requiring Java 8 and taking advantage of its new features, in particualar new bytecodes.

Changing bytecode generation in the Scala compiler rarely goes without surprises:
  - sometimes the JVM offers _almost_ exactly what we need, but working around the corner cases requires a major effort
  - sometimes we misunderstand the JVM spec (which can go unnoticed for years)
  - sometimes a new bytecode encoding introduces a performance regression 
  - finally, a new bytecode encoding can cause unexpected interactions with other language features

In this talk we will look at some of the challenges we faced while working on Scala 2.12, in particular with using default methods for compiling traits and invokedynamic for lambdas. By looking at various low-level details of the JVM bytecode and the classfile format, the talk will give you a good understanding of what changes under the hoods in Scala 2.12.
