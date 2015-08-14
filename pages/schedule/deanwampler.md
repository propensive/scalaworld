Apache Spark is implemented in Scala and it’s user-facing Scala API is very
similar to Scala’s own collections API. The power and concision of this API are
bringing many developers to Scala.

On the other hand, while the JVM is an excellent, general-purpose platform for
scalable computing, its management of objects is suboptimal for
high-performance data crunching. Hence, the Spark project has recently started
a project called “Tungsten” to build internal optimizations based on custom
data layouts, manual memory management (both on-heap and off-heap), etc.

Using these and other examples from the Spark project, this talk discusses the
strengths and weaknesses of Scala and the JVM for Big Data.

