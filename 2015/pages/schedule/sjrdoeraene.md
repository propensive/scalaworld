At Scala Days Amsterdam, we surveyed the “theoretical” foundations of Scala.js
that allow to [interoperate
smoothly](https://www.parleys.com/tutorial/scala-js-semantics-how-support-performance-javascript-interop)
with JavaScript code. In this workshop, we will go the practice side of the
topic. (The former talk is not a prerequisite of this workshop).

Coding along a running example, we will show pretty much everything there is to
know about JS interop in Scala.js: how to use Scala.js facade types to talk to
a JS library, how to write your own, how to use js.Dynamic when static types
are not enough or too annoying, how to export Scala classes and members to
JavaScript code, etc. We will also see common Scala.js interop idioms, i.e. how
existing Scala features, such as implicit conversions and implicit classes, are
used to strengthen typical interop scenarios. Last but not least, we will
cover, for the first time, the latest and greatest features of Scala.js on the
matter: the pseudo-union type `js.|[A, B]`, and how to write in Scala.js
classes that extend (and can be extended by) JavaScript classes.

The audience will leave the workshop with a practical and comprehensive
understanding of Scala.js' interop with JS.

Working knowledge of Scala is assumed. A shallow exposure to JavaScript will
help but is not required. No experience with Scala.js is required either.

