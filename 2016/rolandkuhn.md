# Distributed Systems vs. Compositionality

Distributed systems are becoming more and more commonplace, microservices and cloud deployments force this notion into the day to day routine of many developers. One of the great features of a strongly typed language like Scala—with its expressive type system—is that we can achieve a high level of safety and confidence by letting the compiler verify that our code behaves as specified. But can this safety be carried over into the interactions between distributed parts of an application? Can we for example safely compose Actor behaviours from different pieces?

This presentation introduces some approaches to this problem, including Session Types and π-calculus, and discusses their limitations. The practical ramifications are illustrated using Akka Typed, with a preview of composable and reusable behaviors.
