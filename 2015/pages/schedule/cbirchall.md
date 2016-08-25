Ever since I heard the rumour that compilation involved 27 phases, I've kept my
distance from scalac, telling myself that people smarter than me were taking
care of it. But it's time to stop living in ignorance and fear. Let's tame the
compiler!

First I’ll walk through what the compiler actually does to turn your Scala
source files into Java bytecode, looking at some of those infamous phases along
the way. Then we'll look at how the codebase is structured, how sbt integrates 
with scalac, and how plugins work. Finally there will be a live-coding demo 
showing how easy it is to start hacking on the compiler.
