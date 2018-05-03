+++
title = "Fridays Are For Learning: 2018-W18."
date = 2018-05-04T08:30:35-04:00
tags = [ "fafl" ]
categories = [ "Learning" ]
series = ["Fridays Are For Learning"]
+++

Fridays are for learning.[^1] These are some interesting links for the week
ending May 4, 2018.

[^1]: If your work won’t let you spend even 10-20% of your time keeping up to
      date with your profession, quit your job and find a better one!

* Lots of prominent new releases this week! [Flask 1.0]![^2] [Rancher 2.0]!
[Fedora 28]! [NetHack 3.6.1]! Congrats to all.

[Flask 1.0]: https://www.palletsprojects.com/blog/flask-1-0-released/
[Rancher 2.0]: https://rancher.com/blog/2018/2018-05-01-rancher-ga-announcement-sheng-liang/
[Fedora 28]: https://fedoramagazine.org/announcing-fedora-28/
[NetHack 3.6.1]: https://nethack.org/v361/release.html

[^2]: A sad loss for [ZeroVer](http://0ver.org/) advocates.

* [Jupyter received the ACM Software System Award], joining such highlights of
computing history as NCSA Mosaic, {{< TeX >}},[^3] `make`, and [more]
(https://en.wikipedia.org/wiki/ACM_Software_System_Award). Heady company for
sure, but well-deserved.

[Jupyter received the ACM Software System award]: https://blog.jupyter.org/jupyter-receives-the-acm-software-system-award-d433b0dfe3a2

[^3]: If something has a crazy orthography you know I’m gonna make use of it.

* [Interpretable machine learning] is going to become more and more important;
in my opinion black-box “[computer says no]” models will not be tenable much
longer. (See also [`eli5`], very cool work from some colleagues.)

[Interpretable machine learning]: http://savvastjortjoglou.com/intrepretable-machine-learning-nfl-combine.html
[computer says no]: https://www.youtube.com/watch?v=_lu1xyYx3Eo
[`eli5`]: https://eli5.readthedocs.io/en/latest/index.html

* Asynchronize all the things! [Go with Kafka and MongoDB]; [Python with
Redis].

[Go with Kafka and MongoDB]: https://www.melvinvivas.com/developing-microservices-using-kafka-and-mongodb/
[Python with Redis]: https://testdriven.io/developing-an-asynchronous-task-queue-in-python

* A faster [Python `datetime` parser].

[Python `datetime` parser]: https://www.peterbe.com/plog/fastest-python-datetime-parser

* Learn you some Python for great good: [metaclasses], [bytecode], and [`else`
clauses for `for` and `while`].

[metaclasses]: https://realpython.com/python-metaclasses/
[bytecode]: https://opensource.com/article/18/4/introduction-python-bytecode
[`else` clauses for `for` and `while`]: https://medium.com/@s16h/the-forgotten-optional-else-in-python-loops-90d9c465c830

* Keeping up [with Kubernetes](http://kubernetesstatus.com/).

* The [state of stateful apps] on Kubernetes.

[state of stateful apps]: https://www.cockroachlabs.com/blog/kubernetes-state-of-stateful-apps/

* Right after [xkcd complained] about Python packaging (and it *is* a mess),
Debian accidentally [broke `python3 -m venv`] in `sid`.  We’re gonna have to
figure this out; hopefully there will be some hallway conversations about this
at [PyCon US 2018] next week.

[xkcd complained]: https://www.cockroachlabs.com/blog/kubernetes-state-of-stateful-apps/
[broke `python3 -m venv`]: https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=897121
[PyCon US 2018]: https://us.pycon.org/2018/

* What does it mean to [do one thing]?

[do one thing]: https://nedbatchelder.com//blog/201804/do_one_thing.html

* Finally, last week’s [deep dive into concurrency] continues to resonate with
me; I suspect its thesis is something that we’ll continue coming back to. In
the meantime, here’s a talk the author did at [Pyninsula] 10 back in January,
in which he live-implements “[Happy Eyeballs]” using these
constraints/foundational pieces:[^4]

    {{< youtube i-R704I8ySE >}}

[deep dive into concurrency]: https://vorpus.org/blog/notes-on-structured-concurrency-or-go-statement-considered-harmful/
[Pyninsula]: http://pyninsula.org/
[Happy Eyeballs]: https://en.wikipedia.org/wiki/Happy_Eyeballs

[^4]: The point of the paper being that by adding the right constraints, you
      get better, more elegant foundational flow control elements, as `goto`
      begat `if`, `for`, `while`, <i lang="la">et cetera</i>.
