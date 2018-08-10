+++
title = "Fridays Are For Learning, 2018-W32."
date = 2018-08-10T09:26:17-04:00
tags = [
    "observability", "SAT", "python", "system architecture",
    "production minimalism"
]
categories = ["Learning"]
series = ["Fridays Are For Learning"]
+++

Fridays are for learning. These are some interesting links for the week
ending August 10, 2018.

* [You can’t debug systems with dashboards].  Dashboards (by design) can only
display aggregate data, but your users don’t care about aggregates — they
care only whether *their* requests succeed or fail.  You can be 100% up for
virtually all your users, but 100% down for your most important user and your
dashboard will likely still be green.  Unless you take specific measures, you
likely won’t even know there is a problem until the support request comes in.

[You can’t debug systems with dashboards]: https://read.acloud.guru/why-you-cant-effectively-debug-your-modern-systems-with-dashboards-57fe3ecd26bf

* So how can we proactively discover problems with our systems?  One idea is
[automated anomaly detection].

[automated anomaly detection]: https://eng.uber.com/observability-anomaly-detection/

* [Modern SAT solvers: fast, neat, and underused (part 1 of N)].  An
introduction to solving a specific SAT problem (Sudoku) with [MiniSat].

[Modern SAT solvers: fast, neat, and underused (part 1 of N)]: https://codingnest.com/modern-sat-solvers-fast-neat-underused-part-1-of-n/
[MiniSat]: http://minisat.se/

* On [adding `None`-aware operators to Python].  There have been a number of
non-trivial contentious PEPs recently, and this one will be a real test for
whatever form of decision making Python adopts post-Guido.  On the merits, I
think that this particular change makes Python *less* readable to accommodate
occasional annoyances whereas I think past syntactic changes have generally
been aimed at making the code *more* readable. (Remember, [code is really for
humans].)

[adding `None`-aware operators to Python]: https://lwn.net/Articles/760993/
[code is really for humans]: https://twitter.com/codewisdom/status/816313935406256128?lang=en

* [In pursuit of production minimalism].  Practical advice (based on real
experience at Heroku) on how to reduce operational complexity in your
production systems.  I feel like the recommendations are so important I will
repeat them here:

    >Practicing minimalism in production is mostly about recognizing that the
    problem exists. After achieving that, mitigations are straightforward:

    >* **Retire old technology.** Is something new being introduced? Look for
    opportunities to retire older technology that’s roughly equivalent. If
    you’re about to put Kafka in, maybe you can get away with retiring Rabbit
    or NSQ.

    >* **Build common service conventions.** Standardize on one database, one
    language/runtime, one job queue, one web server, one reverse proxy, etc.
    If not one, then standardize on as few as possible.

    >* **Favor simplicity and reduce moving parts.** Try to keep the total
    number of things in a system small so that it stays easy to understand and
    easy to operate. In some cases this will be a compromise because a
    technology that’s slightly less suited to a job may have to be re-used
    even if there’s a new one that would technically be a better fit.

    >* **Don’t use new technology the day, or even the year, that it’s
    initially released.** Save yourself time and energy by letting others vet
    it, find bugs, and do the work to stabilize it. Avoid it permanently if it
    doesn’t pick up a significant community that will help support it well
    into the future.

    >* **Avoid custom technology.** Software that you write is software that
    you have to maintain. Forever. Don’t succumb to NIH when there’s a well
    supported public solution that fits just as well (or even almost as well).

    >* **Use services.** Software that you install is software that you have
    to operate. From the moment it’s activated, someone will be taking regular
    time out of their schedule to perform maintenance, troubleshoot problems,
    and install upgrades. Don’t succumb to NHH (not hosted here) when there’s
    a public service available that will do the job better.

    >It’s not that new technology should never be introduced, but it should be
    done with rational defensiveness, and with a critical eye in how it’ll fit
    into an evolving (and hopefully ever-improving) architecture.

[In pursuit of production minimalism]: https://brandur.org/minimalism
