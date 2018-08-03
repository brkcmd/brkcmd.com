+++
title = "Fridays Are For Learning, 2018-W24."
date = 2018-06-15T10:22:47-04:00
tags = ["fafl", "graphql", "golang", "go", "docker", "containers", "chaos engineering"]
categories = ["Learning"]
series = ["Fridays Are For Learning"]
+++

Fridays are for learning.[^1] These are some interesting links for the week
ending June 15, 2018.

[^1]: If your work won’t let you spend even 10-20% of your time keeping up to
      date with your profession, quit your job and find a better one!

* As you may have inferred from my comment [last week], `docker build` has
been the bane of my work with containers basically from the start. This week
we saw a major movement toward improving the situation: [experimental BuildKit
support] was added to the Docker builder.  (You have to opt-in to use it, but
we’re on our way now!)

[last week]: {{< relref "/post/2018/06/08-fafl-w23.md" >}}
[experimental BuildKit support]: https://github.com/moby/moby/pull/37151

* John Resig and Loren Sands-Ramshaw [introduce] the [GraphQL Guide],
currently in beta.

[introduce]: https://blog.graphql.guide/introducing-the-graphql-guide-11a5ae48628a
[GraphQL Guide]: https://graphql.guide/

* [Living APIs, and the case for GraphQL]. GraphQL enforces a contract between
consumers and providers, and provide insight into the actual usage of an API.

[Living APIs, and the case for GraphQL]: https://brandur.org/graphql

* [How chaos engineering can drive Kubernetes reliability].

[How chaos engineering can drive Kubernetes reliability]: https://thenewstack.io/how-chaos-engineering-can-drive-kubernetes-reliability/

* Slides from Tammy Bütow’s talk on [Linux chaos engineering]. Chaos
engineering isn’t just “let’s pull the plug and see what crashes”; the
“engineering” part is adding some chaos in a controlled manner[^2] in order to
observe the results.

[^2]: If that’s contradictory, blame me, not the speaker.

[Linux chaos engineering]: https://speakerdeck.com/tammybutow/linux-chaos-engineering-tammy-butow-2

* [Formally specifying UIs]. Modeling UIs as finite state machines can help
avoid the problem of missing certain UI transitions because no one thought of
them, but they can become unwieldy very quickly.  There is a new service,
[Sketch.systems], aimed at making these state machines easier to design and
consider.

[Formally specifying UIs]: https://www.hillelwayne.com/post/formally-specifying-uis/
[Sketch.systems]: https://sketch.systems/

* [What co-located teams can learn from remote teams]. Remote-first best
practices — including shifting from a spoken to a written culture, having
empathy for each other’s needs, and making concerted efforts to stay connected
to each other — are actually good for *all* teams, remote or not.

[What co-located teams can learn from remote teams]: https://medium.com/@elnoelle/what-colocated-teams-can-learn-from-remote-teams-f48bb4a708d1
