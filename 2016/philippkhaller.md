# Can we make concurrency in Scala safer?

Concurrent programming is infamous for its difficulty. Hazards like
race conditions manifest themselves as bugs that are often hard to
find and fix. This talk presents LaCasa, a minimal Scala extension
designed to express concepts such as isolation and access permissions
via types. Among others, LaCasa's refinement of Scala's type system
enables enforcing the isolation of actors, at compile time. Building
on the object capability model, LaCasa also provides strong security
properties, enabling applications beyond safe concurrency.
