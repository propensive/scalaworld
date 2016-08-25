Scala's type system allows us to enforce compile-time constraints on our
programs, and to take advantage of these constraints to help reason about our
code. Yet we still frequently encounter situations where extracting a value
from a map is not guaranteed to succeed, or mapping across a set of cases is
not guaranteed to be exhaustive. With dependent types we can make operations
like these completely safe by construction, in the process eliminating entire
classes of errors, and furthermore we can do this without complicating user
code.

Additionally, with more precise type information becoming available at compile
time, we elicit the exciting opportunity to use it to optimize performance at
runtime, beyond what would be possible without dependent typing.

The talk will cover several simple and intermediate examples using dependent
types, and will give a brief outline of some of the the challenges involved in
implementing typesafe libraries with dependent types in Scala, but the majority
of the talk will be accessible to all Scala users.

