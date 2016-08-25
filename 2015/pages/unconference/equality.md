## Strict equality and cooperative equality in spire

### [Rüdiger Klaehn](https://twitter.com/klaehnr), 30 minutes

I will present the new strict equality operator === that we have implemented in
[spire](http://github.com/non/spire), and show how to implement cooperative
equality without relying on inheritance.

Motivation: Various libraries (spire, scalaz, scalatest, ...) have found it
necessary to add their own mechanisms and operators for equality. This can lead
to problems when the operator names collide, and is confusing for people
starting with the language.

Spire spends a lot of effort to support cooperative equality by overriding
equals.  This leads to a lot of interdependency between otherwise unrelated
types that is preventable using a typeclass based approach.

I think it would be great if the typeclass-affine part of the scala community
could settle on a generic mechanism for both strict equality and cooperative
equality.

