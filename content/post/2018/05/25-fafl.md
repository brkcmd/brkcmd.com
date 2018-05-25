+++
title = "Fridays Are For Learning, 2018-W21: PyCon US 2018 Part 2."
date = 2018-05-25T08:37:16-04:00
tags = ["fafl", "pycon", "pycon us", "pycon us 2018", "videos", "python"]
categories = ["Learning"]
series = ["Fridays Are For Learning"]
+++

Fridays are for learning.[^1] Another batch of videos from PyCon US 2018 (see
the [YouTube channel] for more), for the week ending May 25, 2018.

[^1]: If your work won’t let you spend even 10-20% of your time keeping up to
      date with your profession, quit your job and find a better one!

[YouTube channel]: https://www.youtube.com/channel/UCsX05-2sVSH7Nx3zuk3NYuQ/videos?flow=grid&view=0&sort=dd

**Barry Warsaw, “Get Your Resources Faster With `importlib.resources`**

{{< youtube ZsGFU2qh73E >}}

An introduction to Python 3.7’s new `importlib.resources`, which incorporates
some (tiny fraction) of `pkg_resources` into the standard library.

**Alex Gaynor, “Learning from Failure: Post Mortems”**

{{< youtube L9Y2ap6vIMg >}}

Failures happen. Make use of them.

**VM Brasseur, “The Human Nature of Failure & Resiliency”**

{{< youtube h-38HZqanJs >}}

A self-described greatest hits of the history of research into failure (biased
toward Western cultures). I think this talk is useful in conjunction with the
last one, as Brasseur advocates for “pre-mortems” (i.e., answering the
question “what went right, and why” compared to a post-mortem’s “what went
wrong”) as a tool to identify latent errors.

**Amanda Sopkin, “Randomness in Python: Creating Chaos in an Ordered
Machine”**

{{< youtube EGF4G2feXx4 >}}

Three major take-aways to this talk: don’t use `random` (or `numpy.random`!)
for things which actually need to be random (counterintuitive, arguably a
failure in naming), use `secrets` if you must, but better to use
[`cryptography`] if you need cryptographically-secure randomness.

[`cryptography`]: https://cryptography.io/

**Raymond Hettinger, “Dataclasses: The code generator to end all code
generators”**

{{< youtube T-TwcmT6Rcw >}}

For when you need something a bit better than a (named) tuple, but want to
avoid the normal boilerplate of regular classes. See also: [`attrs`] (though
there are somewhat different aims between the two packages).

[`attrs`]: https://attrs.readthedocs.io/

**Nina Zakharenko, “Elegant Solutions for Everyday Python Problems”**

{{< youtube WiQqqB9MlkA >}}

Aimed at intermediate developers, a quick overview of magic methods, “method
magic,” generators, context managers, decorators, [context decorators], and
named tuples.

[context decorators]: https://docs.python.org/3/library/contextlib.html#contextlib.ContextDecorator

There are a few additional talks that I liked enough to devote full posts to;
look for those soon!
