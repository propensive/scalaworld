# Generic Derivation: The Hard Parts

Since the introduction of macros in Scala 2.10, many Scala libraries have added
support for generic derivation of type class instances, allowing users to avoid
much of the boilerplate that would be involved in defining instances for their
data types by hand. Instances of `Ordering` or `Arbitrary` for one case class
tend to look a lot like instances for any other case class, for example, and
generic derivation uses compile-time reflection to help you keep this repetition
out of your codebase.

While generic derivation offers many advantages over the alternatives (less
code to maintain than manual definitions, less fragility to worry about than
runtime reflection), deriving type class instances in Scala has its own
challenges. It's tricky to get instances prioritized appropriately, the
compile-time cost can be prohibitive, and straightforward implementations can be
too rigid to provide useful support for real-world serialization formats and
requirements.

This presentation looks at how some of these problems are addressed in
[Circe][circe], a Scala library for JSON encoding and decoding. We will focus on
how Circe uses a few custom macros (in conjunction with [Shapeless][shapeless]'s
generic machinery) to help reduce compilation time, and on newly-introduced
functionality that allows users to configure generically-derived type class
instances in a principled and concise way.

[circe]: https://github.com/travisbrown/circe
[shapeless]: https://github.com/milessabin/shapeless
