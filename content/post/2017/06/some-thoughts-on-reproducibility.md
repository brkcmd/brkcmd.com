+++
date = "2017-06-03T09:50:30-04:00"
title = "Some thoughts on reproducibility."
aliases = [
    "/post/2017/06/some-thoughts-on-reproducibility/"
]
categories = [ "Science" ]
tags = [ "videos", "science", "reproducibility", "pycon us", "pycon us 2017" ]
+++

Jake VanderPlas's keynote for PyCon US 2017 was about "[The Unexpected
Effectiveness of Python in
Science](https://www.youtube.com/watch?v=ZyjCqQEUa8o):

{{< youtube ZyjCqQEUa8o >}}

The main thrust of Jake's talk was about how astronomers have been able to use
Python and the culture of the community around the language to do better
science, including being able to provide other scientists access to the
software used to perform experiments and analyze and manage data.

One thing that has become clear over the years is that the reproducibility of
any particular claim is now completely dependent not only on the availability
of data but also the particular stack of software used, both to generate the
data, and to work with that data.

An important part of "reproducibility" is asking "if I give you my data and my
code, do you also get my result?" It seems like a straightforward question, but
unfortunately there are a lot of complications hidden in the phrases "my data"
and "my code", and many of them (perhaps most?) are related to the software
used in the project. It's largely accepted now that in order to provide a
chance at reproducibility, one has to provide not only the raw data but also
the code used in analyzing it, but how far down into that stack is sufficient?
Is it enough to provide the project-specific code and specify the particular
versions of third-party packages that are used? Does one also need to specify
particular builds of packages, including Python and other external libraries?
How about the version of the operating system used to run that code? What about
the particular version of `glibc` that was installed during the times that the
code was running? The version(s) of the kernel on the machines where the code
ran?

I would argue that there are two ways to look at this situation. The first is
that in order to have a chance at actual reproducibility --- that is, both
being able to get the same results *and* also knowing that the fact that you
got the same result is meaningful and *not* coincidental --- you have to
declare the stack "all the way down". It's not enough to simply provide the
specific code used to generate the results, because the results could possibly
be different if any one or more of the lower levels is changed. For example, [a
bug](https://github.com/Reference-LAPACK/lapack/issues/92) in LAPACK for nearly
twenty years (at least!) recently got fixed. If my results are not the same as
your results when using the same data and the provided processing code, was it
because my LAPACK was upgraded and yours wasn't? How can we tell?

That leads me to the second way of looking at this situation: it's important to
figure out **which** and **what kinds of** changes are "acceptable" (that is,
that they should *not* affect reproducibility) and which are not. That's a hard
problem.  It may not actually be solvable, in fact. But if the published
results actually depended on a bug, that's important to know, too.

In my own (non-science) work, I want to know at least that the code I tested is
what actually gets run in the production environment. To that end I have spent
a lot of time wrangling Docker images and precise package specifications
building a continuous integration pipeline so that I can feel reasonably sure
of that. But even with all that work, there is still a disconnect: even though
I use the same image on production that I used in tests (byte-for-byte, even!),
the reality is that the code is running on a different machine with a different
Linux kernel, and so there is at least some part of the situation which is
outside of my control.

For my current work, that level of uncertainty is acceptable (if somewhat
vexing for me personally). For science, I would argue that it actually isn't. 

