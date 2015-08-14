It is well-known that tests provide an existential guarantee (if the test
fails, there is a bug), and that types provide a universal guarantee (the
program can't go wrong). Combined, both are useful tools to gain more
confidence in the correctness of a given program. However, not all languages
provide a sophisticated type system which is able to encode strong properties.
Some do, but the syntax is cumbersome. Luckily, there are tools which help to
verify code without having to resort to rewriting it completely in a different
language.

In this talk, we’ll explore the meanings of specification and implementation,
how to formally specify programs, and how to create a connection between these
two. We will also look at how to produce one from the other, and present some
of the existing tools.

