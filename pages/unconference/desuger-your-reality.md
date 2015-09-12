# Scala Magic: Desugaring your Reality

I like redoing a session I did a while back at Amsterdam.scala. This will be make it up as we go session, interaction is 
really appreciated ;)

## Abstracts

Solutions in Scala can often be expressed in more ways then one and Scala provides a lot of convenient ways to express 
common patterns/solutions with very concise syntax. You might take this for granted and you might not always know that 
it is just sugar. 
During this talk we will explore constructs like for comprehensions, case classes and more. We will look what the 
Scala parser actually makes of it, using `scalac -Xprint` and `jad`.

## Joost Heijkoop

Software developer working for [Xebia](http://www.xebia.com) and organizer at 
[Amsterdam.scala](http://www.meetup.com/amsterdam-scala/), always looking to learn, share, teach and meet new people.

## Audience

My talk is aimed at devs who use Scala "constructs" every day, but don't always know which are sugar, which are 
actually fundamental language constructs and how this all maps onto the JVM.