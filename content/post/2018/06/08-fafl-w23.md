+++
title = "Fridays Are For Learning, 2018-W23."
date = 2018-06-08T09:59:39-04:00
tags = ["fafl", "golang", "go", "python"]
categories = ["Learning"]
series = ["Fridays Are For Learning"]
+++

Fridays are for learning.[^1] These are some interesting links for the week
ending June 8, 2018.

[^1]: If your work won’t let you spend even 10-20% of your time keeping up to
      date with your profession, quit your job and find a better one!

* “[Go for industrial programming].” As time goes on, I have embraced this
kind of thinking more and more. While the term “industrial programming” seems
to be intentionally distancing, the idea that building systems that are
intended to last (even as individual developers come and go and business
requirements change) requires specific attention to succeed really makes sense
to me. As is often the case, this is a general topic discussed in terms of a
specific technology, but the insights are definitely not restricted to Go.[^2]

[^2]: Note that [the nursery idea] for managing concurrency is brought up
      again.  As I’ve mentioned previously, now that we have a **name** for
      this type of flow control we’ll probably see it come up again and again.

[Go for industrial programming]: https://peter.bourgon.org/go-for-industrial-programming/
[the nursery idea]: https://vorpus.org/blog/notes-on-structured-concurrency-or-go-statement-considered-harmful/

* An [experiment with distributed finite state machines]&#x20;(with [associated
repo]), aiming for the middle ground between regular task queues (in which
workflow must be managed by the application) and something like [Airflow], in
which an entire external system is needed to manage a workflow.  [Finite state
machines] are extremely useful and somewhat undervalued in my opinion.

[experiment with distributed finite state machines]: https://lethain.com/dfsmr/
[Airflow]: https://github.com/apache/incubator-airflow
[associated repo]: https://github.com/lethain/dfsmr
[Finite state machines]: https://brilliant.org/wiki/finite-state-machines/

* [Advanced multi-stage build patterns] for `Dockerfile`s.[^3] After
struggling against `Dockerfile` limitations for literally years, my interest
has largely moved on to alternative ways to build container images (such as
[img], which uses [`BuildKit`] underneath) but these patterns are useful for
those still stuck dealing with the current `docker build`.

[^3]: Amusingly, with the introduction of multi-stage builds and build
      arguments, `Dockerfile`s now have a limited form of flow control.  I
      wonder if they will discover in time the same things Dijkstra did:
      explicit, less general flow control makes things *better*, not worse.

[Advanced multi-stage build patterns]: https://medium.com/@tonistiigi/advanced-multi-stage-build-patterns-6f741b852fae
[img]: https://github.com/genuinetools/img
[`BuildKit`]: https://github.com/moby/buildkit

* On [failure modes], specifically related to software versioning and
considering `vgo`’s minimal version selection algorithm, which is (as may be
expected) an elegant solution to a math problem but one which is in my opinion
largely disconnected from reality.  I think one of the top dangers in software
engineering is solving the problem that we *want* to solve rather than the one
that we actually have.

[failure modes]: https://sdboyer.io/vgo/failure-modes/

* Redis 5.0 is now in [release candidate stage]; a major new feature is [Redis
Streams], basically an implementation of a lightweight log data structure.  I
can think of lots of situations where a log structure would be useful, but not
at the cost of setting up something like Apache Kafka; it looks like this will
fill that niche nicely.[^4] There’s some interesting additional comments from
`'antirez` in the [discussion on the orange] as well.

[^4]: If I were less sane, I might seriously look at using Redis Streams in
      [my reimplementation project].

[release candidate stage]: https://groups.google.com/d/topic/redis-db/9FcwPtutyyQ/discussion
[Redis Streams]: https://redis.io/topics/streams-intro
[discussion on the orange]: https://news.ycombinator.com/item?id=17179651
[my reimplementation project]: /series/revisiting-a-past-project-faces.html

* Finally, a talk from JSConf EU 2018 by Node.js creator Ryan Dahl, “[10
Things I Regret About Node.js]”.

{{< youtube M3BM9TB-8yA >}}

[10 Things I Regret About Node.js]: https://www.youtube.com/watch?v=M3BM9TB-8yA

