# Writing a Compiler Plugin or Macro

In this workshop, aimed at intermediate Scala developers, you will
learn how to write a compiler plugin and understand the tooling
and support consequences.

You will learn about Scala's compile phases, the Types / Trees APIs of
the compiler, and why compiler plugins / macros cause such a headache
for IDEs.

You will learn the difference between the various kinds of macros, and
why you should prefer using existing libraries first, writing compiler
plugins second and only writing a macro out of desperation.

Half of the workshop is an interactive `@case` study, so bring your
laptop or pair up with somebody who has one. We will implement `case
class` as a compiler plugin that works out-of-the-box in Scala IDE and
ENSIME, hinting at how one would provide similar support in IntelliJ
through an IDE plugin.
