## ScalaTest 3.0 Design Review

### [Bill Venners](https://twitter.com/propensive), 45 minutes

ScalaTest 3.0 represents a difficult design challenge. It is an eight year old
codebase with wide usage at which we've thrown a major change in requirements: it now has 
to run in JavaScript as well as Java. In addition we want to add a nice syntax for laws
testing. These two features have pushed ScalaTest to the edge of a complexity cliff and
I'm trying to keep it from falling off. I think I've found a path forward that will keep
things simple, but I'd like to get some feedback.

One enhancement in 3.0.0 that we were thinking might be good in general, and we had even
already implemented in a branch, but that was essentially forced upon us by Scala.js is
async testing. So in ScalaTest 3.0.0, you'll be able to map a Future to a Future assertion
and return that to the test framework, much like you can return a Future response to
the Play or Akka Http frameworks. This requires a different withFixture method that operates
in Future Outcomes instead of plain-old Outcomes, and that means we need a set of "Async"
style traits that has this different kind of withFixture. It also forces us to pick a result
type in tests, and I feel Future[Unit] might be error prone. We have a branch in which 
we've given changed the result type of assertion and matcher expressions to Assertion. And
we've had to figure out whether the result type of existing style traits should be changed
to Assertion or left as Unit, and whether the Async style traits should be Future[Unit],
Future[Assertion] or somehow support both. This really represents an potential explosion
in complexit that would be un-ScalaTest-like, and I have struggled for months to figure
out a best way forward. I'll go over what the current plan is, and give demos.

Another enhancement we have been working on, which probably won't be released as part of
3.0.x, but rather as 3.1 or so, is support laws testing. For this we've started adding
Expectations and WillMatchers, which are a kind of assertino that returns a result
rather than throwing a TestFailedException. The result is called Fact, and is either
a Yes or a No. A Fact is like Boolean with messages. I'd like to demo this as well
and talk about how it will fit in with the rest of ScalaTest. Again this feature
has the potential to push ScalaTest over the edge of complexity, so it is been a long
struggle to figure out if and how we should add this to ScalaTest. I'll also go
over the plan for expectations and give some demos.

