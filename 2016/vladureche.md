# The Story of a Parallel Scala Library

Few people know that miniboxing comes with its own Scala library which has miniboxed arrays, numeric, ordered, tuple and, more interestingly, functions. Without mentioning much, the miniboxing plugin swaps in its optimized library, getting better performance out of your code.

In this talk I'm going to share some insights on this little secret, explaining why we have a parallel library and how it's implemented. You'll learn about Scala arrays, their invariants, program transformations and many interesting insights into diagnosing performance slowdowns. And you'll see an example of miniboxing in action, improving the performance of a complex Scala class hierarchy.
