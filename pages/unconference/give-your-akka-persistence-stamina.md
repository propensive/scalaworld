# Give your Akka Persistence Stamina; Persistence migrations done right

This is will be a dry run for hopefully Scala eXchange or Lambda World ;)

## Abstract

When doing event sourcing with Akka actors, maintaining the persistence in an evolving system can be hard and tedious, when using contemporary persisting solutions. You will always run into migration issue when you want to update your domain models and generated event that have already been stored in production.
People have already "solved" the migrations with for instance having multiple versions of the same events (MyEventV1, MyEventV2, etc.) or doing migrations in the DB. But both solutions aren't particularly elegant and can be error prone or bad for maintenance. You are missing an abstraction: Stamina.
This workshop will show what you need to do to use Akka Persistence together with Stamina, so that your persisting and migrating becomes easy as cake!

## Joost Heijkoop

Software developer working for [Xebia](http://www.xebia.com) and organizer at [Amsterdam.scala](http://www.meetup.com/amsterdam-scala/), always looking to learn, share, teach and meet new people.

## Audience

My talk is aimed at devs who have experience with Scala / Akka (Persistence) and are familiar with the migrations issues associated with Akka persistence and persistence in general, in an evolving system. But most Scala devs should be able to follow along.

## Previous runs

It can take from 15 minutes upto 2 hours, I can stretch/shrink it to the desired size. I prefer 45 min.

I already did a 15 min. version on [GOTO Amsterdam](http://gotocon.com/amsterdam-2015/speaker/Joost+Heijkoop)
and a 45 min. version on the [Brabant.scala](http://www.meetup.com/brabant-scala/events/223421083/), [ScalaVienna](http://www.meetup.com/scala-vienna/events/223636690/) and [Amsterdam.scala](http://www.meetup.com/amsterdam-scala/events/224469203/) meetups.
And a 2 hour session at [Amsterdam.scala](http://www.meetup.com/amsterdam-scala/events/223487173/)
