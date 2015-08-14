Domain modeling has traditionally been viewed and implemented using OO
techniques and class based OO languages. The focus being the domain itself,
existing literature has espoused us to start looking into the nouns of the
domain. Classes first, accompanied with deep nested inheritance hierarchies
form the backbone of many domain model implementations today.

In this talk we will take a radically different approach. We will start with a
focus on the verbs first, think about domain behaviors and how we can model
them using pure functions grouped together within extensible containers called
modules. We will take an algebraic approach towards evolution of these modules
- the algebra being composed of functions, types and laws. We will see how the
domain algebra can be constructed as a composition of algebras from standard
categorical structures like monoids, functors and monads.

We will conclude the talk with an introduction to property based verification
of domain laws which are essentially the properties of the domain algebra. The
discussion will be based on Scala and we will make heavy usage of the static
type system that the language offers.


