+++
title = "Fridays Are For Learning, 2018-W31."
date = 2018-08-03T10:40:36-04:00
tags = [
    "serverless", "testing", "formal methods", "golang", "go modules",
    "python", "openfaas", "zappa", "chalice", "video"
]
categories = ["Learning"]
series = ["Fridays Are For Learning"]
+++

Fridays are for learning. These are some interesting links for the week
ending August 3, 2018.

* On [serverless testing in production]: it’s not that you shouldn’t be
doing testing *before* releasing to production, it’s that you should *also* be
doing some kind of testing in production as well. Production is where reality
hits your systems; it’s the only place you will be able to find real-world
conditions. Feature flags, canary deployments, staged rollouts, rich
instrumentation, and observability-first development are all useful here.

[serverless testing in production]: https://thenewstack.io/serverless-testing-in-production/

* [Augmenting agile with formal methods]. Concurrent software invalidates a
lot of our usual heuristics about how software behaves. Perhaps formal methods
offer a way to make provable conclusions about the behavior of the system.
(This article is not really about agile development per se, it’s about a
specific example that was demonstrated during the development of agile
development/[extreme programming].[^1])

[^1]: Now *there’s* a term that screams late-nineties if ever one did.

[Augmenting agile with formal methods]: https://www.hillelwayne.com/post/augmenting-agile/
[extreme programming]: https://en.wikipedia.org/wiki/Extreme_programming

* A summary of [Go modules]. I’ve expressed a lot of ambivalence about `vgo`,
mostly related to [MVS]. (I think only time will tell whether MVS is a
suitable replacement for traditional SAT-based dependency resolution; I’m
still skeptical.) But aside from that I think Go modules are a Good Thing,
finally freeing us from the tyranny of `$GOPATH` and generally making
self-contained packages saner.

[Go modules]: https://systemdump.io/posts/2018-07-22-go-modules
[MVS]: https://research.swtch.com/vgo-mvs

* [Misadventures in Python packaging: optional C extensions]. It’s definitely
true the Python packaging story is suboptimal.

[Misadventures in Python packaging: optional C extensions]: http://charlesleifer.com/blog/misadventures-in-python-packaging-optional-c-extensions/

* [Introducing the OpenFaaS operator for serverless on Kubernetes]. OpenFaaS
on Kubernetes is very interesting as it provides a cloud-neutral serverless
environment (though without the elastic billing benefits of something like AWS
Lambda).

[Introducing the OpenFaaS operator for serverless on Kubernetes]: https://blog.alexellis.io/introducing-the-openfaas-operator/

* [The Right Way™ to do serverless in Python, part 2]. Several weeks ago I
linked to [part 1]; this installment focuses on using Django and Flask with
[Zappa], and takes a look at the AWS Lambda-specific [Chalice].

[The Right Way™ to do serverless in Python, part 2]: https://read.iopipe.com/the-right-way-to-do-serverless-in-python-part-2-63430131239
[part 1]: https://read.iopipe.com/the-right-way-to-do-serverless-in-python-e99535574454
[Zappa]: https://github.com/Miserlou/Zappa
[Chalice]: https://github.com/aws/chalice

* Finally, a talk from Beau Lyddon: “[What is Happening? Attempting to
Understand Our Systems]”:

[What is Happening? Attempting to Understand Our Systems]: https://www.youtube.com/watch?v=xy3w2hGijhE

{{< youtube xy3w2hGijhE >}}
