Ever since I heard the rumour that compilation involved 27 phases, I've kept my
distance from scalac, telling myself that people smarter than me were taking
care of it. But it's time to stop living in ignorance and fear. Let's tame the
compiler!

First I’ll give a quick overview of scalac, showing how the codebase is
structured. Then I’ll walk through what it actually does to turn your Scala
source files into Java bytecode, looking at some of those infamous phases along
the way. Finally there will be a live-coding demo showing how easy it is to
start hacking on the compiler.


