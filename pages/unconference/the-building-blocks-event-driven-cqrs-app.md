## The Building Blocks of an Event Driven CQRS Application in Scala

### [Renato Cavalcanti](https://twitter.com/renatocaval), 60 minutes

In this talk we will have a look at the basic building blocks we need when developping a Event Driven CQRS application in Scala.

We will discuss some design choices and challenges we may encounter and how to tackle them using the Scala Type System and some functional programming techniques. 

We'll explore the following topics: 
	* Defining a `Protocol` (Commands and Events) in the form of case classes (obviously!);
	* Using `Future` and `Try` to express computations;
	* A `BehaviorDsl` based on a `Protocol` and `PartialFunctions`;
	* How to glue them all together to produce a write and a read model;

Finally, we will have a look on how to integrate it with Akka and Akka Persistence.
