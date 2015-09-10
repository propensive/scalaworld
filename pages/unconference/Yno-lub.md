## -Yno-lub

### [Eugene Yokota](https://twitter.com/eed3si9n), 30 minutes

`-Yno-lub` is [an idea](https://i.imgflip.com/qtafl.jpg) I've been having to
make Scala compiler do less when it finds type `A` and type `B` to unify.
Instead of trying to calculate the least upper bounds, what if the compiler
just errored? The compiler would do less work, and the resulting behavior would
be more predictable.

Here are some of the pathological inferences from Jon Pretty's [Type Inference
talk](http://rapture.io/talks/inference/boston.html):

```scala
scala> List(0, 3.0)
res0: List[Double] = List(0.0, 3.0)

scala> 0 :: List(3.0)
res1: List[AnyVal] = List(0, 3.0)

scala> List(Left(1), Right("two"))
res2: List[Product with Serializable with scala.util.Either[Int,Strin
g]] = List(Left(1), Right(two))

scala> List(Vector(0), Range(0, 1))
res3: List[scala.collection.immutable.IndexedSeq[Int] with scala.coll
ection.AbstractSeq[Int] with Serializable with scala.collection.Custo
mParallelizable[Int,scala.collection.parallel.immutable.ParSeq[Int] w
ith Serializable{def seq: scala.collection.immutable.IndexedSeq[In...
```

This session is a round table to discuss:

- how `-Yno-lub` can be implemented, and
- how we can improve type inference of algebraic data types like `Either[A,
  B]`. Can we use union type?

