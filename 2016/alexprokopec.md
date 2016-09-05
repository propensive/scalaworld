# First-class coroutines for Scala

In today's era of distributed computing, reactivity and asynchronous, event-driven systems,
computations must often wait until specific conditions are fulfilled.
These conditions range from anything from an arrival of a network request or a keyboard stroke,
to an external sensor triggering an event.
The ability to suspend computations awaiting such events is more important than ever.
Commonly, computations are suspended either by blocking the current execution thread,
or by registering callbacks.
The former has a negative impact on performance, and is typically shunned upon.
The latter, which is an established practice today,
comes with its own set of unpleasant syntactic overheads.
Previous approaches to reduce these syntactic overheads
were too focused at specific use-cases,
and were not sufficiently general.

In this talk,
I show that it is possible to have the best of both worlds -
to write direct-style, seemingly blocking programs,
but use callbacks under-the-hood to improve program scalability and throughput.
I will present first-class type-safe coroutines implemented in Scala,
and show how they are used to implement more specific computation models,
such as Async-Await, Erlang-style actors, and Esterel-style pause statements.
I continue to show that coroutines are applicable to more easily implementing
collection iterators, and allow more concise ScalaCheck-style testing.
Finally, I show that Scala coroutines are equivalent to continuations in expressive power.
