+++
title = "Fridays Are For Learning, 2018-W20: PyCon US 2018 Part 1."
date = 2018-05-18T07:14:54-04:00
tags = ["fafl", "pycon", "pycon us", "pycon us 2018"]
categories = ["Fridays Are For Learning"]
series = ["Fridays Are For Learning"]
+++

Fridays are for learning.[^1] These are the first batch of videos from PyCon
US 2018 (see the [YouTube channel] for more) for the week ending May 18, 2018.

[^1]: If your work won’t let you spend even 10-20% of your time keeping up to
      date with your profession, quit your job and find a better one!

[YouTube channel]: https://www.youtube.com/channel/UCsX05-2sVSH7Nx3zuk3NYuQ/videos?flow=grid&view=0&sort=dd

**Larry Hastings, “Solve Your Problem With Sloppy Python”**

{{< youtube Jd8ulMb6_ls >}}

I think Larry has a good point (things you build for yourself to automate
personal tasks don’t need to be held to the same standard as code you write
for others to consume); I like to use these opportunities to try out new
tools. Sometimes it’s the only way to get a feel for them absent a reason to
use them for work projects.

**Kenneth Reitz, “Pipenv: The Future of Python Dependency Management”**

{{< youtube GBQAKldqgZs >}}

There is a lot that I like about [`pipenv`], and I am using it for new projects,
but the packaging story for Python is still sadly incomplete. In particular,
`pipenv` is aimed directly at applications, i.e. packages that are meant to be
deployed by some end-user directly.  It really doesn’t speak at all to
improving things for composable pieces.

[`pipenv`]: https://pipenv.readthedocs.io/en/latest/

**Jason Fried, “Fighting the Good Fight: Python 3 In Your Organization”**

{{< youtube H4SS9yVWJYA >}}

A nice summation of how a rather small group of developers have managed (with
effort and over several years) to help Facebook move to “Python 3 by default”
from “it’s never gonna happen”. Major kudos, and hopefully we’ll be hearing
more stories like these as the [end of life for Python 2] approaches.

[end of life for Python 2]: https://pythonclock.org/

**Jake VanderPlas, “Performance Python: Seven Strategies for Optimizing Your
Numerical Code”**

{{< youtube zQeYx87mfyw >}}

Quick, practical advice for making the slow parts of number-crunching code
faster.

**Carol Willing, “Practical Sphinx”**

{{< youtube 0ROZRNZkPS8 >}}

Don’t let the perfect get in the way of writing docs; some solid practical
advice for making the most of Sphinx.

**David Beazley, “Reinventing the Parser Generator”**

{{< youtube zJ9z6Ge-vXs >}}

Many, many years ago David Beazley wrote [`ply`], and had to jump through some
hoops to accomplish what he needed with the tools Python had. (Using raw
docstrings as regex patterns is one of those evil yet brilliant
ideas.) Now he comments on what the current batch of tools offers as he
is developing [`sly`].

[`ply`]: http://www.dabeaz.com/ply/
[`sly`]: https://github.com/dabeaz/sly

This is only a small selection of [all the talks]; more next week.

[all the talks]: https://www.youtube.com/channel/UCsX05-2sVSH7Nx3zuk3NYuQ/videos?flow=grid&view=0&sort=dd
