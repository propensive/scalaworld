## Reactive web applications provided with Akka cluster

### [Grzegorz Wilaszek](https://twitter.com/wilaszekg), 30 minutes

### [Github repo](https://github.com/wilaszekg/akka-play-reactive-sse)

Based on a simple sample application, I want to discuss challenges of developing reactive web apps. I will present a message-driven and resilient solution which will cover two-way message passing between client and server side and implementing a web server as a member of Akka cluster to provide loose coupling with backend domain entities, like sharded actors. I will also show how to make an event-driven web app failure tolerant, introducing durable subscription implemented with Akka persistence and distributed publish subscribe in the cluster.
