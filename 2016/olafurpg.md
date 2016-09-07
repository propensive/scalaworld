# A Whirlwind Tour of scala.meta

Metaprogramming enables us to do cool things such as build developer tools and implement macros that extend the functionality of a programming language.
However, metaprogramming in Scala has historically been notoriously difficult because of its tight coupling with compiler internals.

This workshop is an introduction to [scala.meta][scalameta], a clean-room implementation of a metaprogramming toolkit for Scala, designed to be simple, robust and portable.
We will focus on scala.meta's most unique features: high-fidelity tokens and comprehensive trees.
You will get a hands-on experience with these features by using scala.meta in two different ways:

1. as a library to develop a tool that automatically fixes common linter errors.
   We will see how a code rewrite can be implemented in a few lines of code, tested on millions of lines of Scala code and be integrated with SBT and your favourite IDE.

2. as a compiler plugin to implement new-style ["inline" macro][inline] annotations.
   We will see how inline style macros offer a much lower learning curve compared to scala.reflect macros.

At the end of the workshop, I hope you will be inspired to develop the next generation of Scala tooling!

PS. I recommend IntelliJ users pre-install [IntelliJ IDEA 2016.3 EAP][eap] for a sneak peek into new features to help you debug scala.meta based macros.

[scalameta]: http://scalameta.org/
[eap]: https://confluence.jetbrains.com/display/IDEADEV/IDEA+2016.3+EAP
[inline]: https://gist.github.com/xeno-by/9d7a709b1ba7c2ee64cfedcc5d264bd5
