+++
title = "Fridays Are For Learning, 2018-W25."
date = 2018-06-22T09:12:11-04:00
tags = [
    "fafl", "python", "golang", "go", "containers", "networking", "testing",
    "wireguard"
]
categories = ["Learning"]
series = ["Fridays Are For Learning"]
+++

Fridays are for learning.[^1] These are some interesting links for the week
ending June 22, 2018.

[^1]: If your work won’t let you spend even 10-20% of your time keeping up to
      date with your profession, quit your job and find a better one!

* Joe Duffy says “[Hello, Pulumi]!” [Pulumi] is a new service to configure
cloud services/<abbr title="infrastructure as a service">IaaS</abbr>
programmatically using JS/TypeScript/Go/Python. Modern deployment systems now
mean diving into piles and piles of YAML, compounded by the piles of
additional YAML you need to configure *that* YAML for tools like Helm. So in a
general sense I agree that higher-level tools would be useful.  That said, I’m
not sure this is the way to go, from two perspectives:

  1. There are dangers inherent to switching back from declarative
     configuration to an imperative way of thinking. On first thought it seems
     to me if you are using an imperative language simply to make the
     declarative configuration easier to write, maybe that’s not so bad, but
     With Great Power *etc. etc.  etc.*

  2. Pulumi is actually a CLI *and* a hosted service; is it possible to
     self-host the hosted part or is everyone who uses this system tied to the
     fortunes of some external third-party? Just this week NPM saw a
     production outage due to a dependency on an external service that was
     [acquired] by Twitter and shut down with [30 minutes notice], at 6 am
     local time. **Do not miss this lesson.**

[Hello, Pulumi]: http://joeduffyblog.com/2018/06/18/hello-pulumi/
[Pulumi]: https://pulumi.io/
[acquired]: https://twitter.com/aeflash/status/1009844254896615425
[30 minutes notice]: https://twitter.com/seldo/status/1009873821141118976

* [`flake8-bugbear`] is a [`flake8`] plugin to provide some more opinionated
style warnings for Python than `flake8` does by itself.

[`flake8-bugbear`]: https://github.com/PyCQA/flake8-bugbear
[`flake8`]: http://flake8.pycqa.org/en/latest/

* [The Go object lifecycle].

[The Go object lifecycle]: https://middlemost.com/object-lifecycle/

* Exploring [the landscape of Go testing frameworks].

[the landscape of Go testing frameworks]: https://bmuschko.com/blog/go-testing-frameworks/

* The [war on developer productivity], and how Derrick Reimer intends to solve
it. For all its significant benefits, Slack can turn into a developer
productivity sink, as it exploits (in the same way as many modern apps) some
aspects of the human brain that can prevent people from focusing on their
actual work.  Whenever possible I try to limit my usage of Slack to when it’s
truly needed (synchronous communication); I like to view it as a searchable
text-based replacement for multiparty phone calls. Maybe Derrick’s new project
[Level] will be able to bridge the gap between the asynchronicity necessary
for getting stuff done and the otherwise generally useful features of Slack.

[war on developer productivity]: https://www.derrickreimer.com/posts/the-war-on-developer-productivity/
[Level]: https://level.app/

* [The state of type hints in Python].

[The state of type hints in Python]: https://www.bernat.tech/the-state-of-type-hints-in-python/

* Jessie Frazelle looks at [installing and using Wireguard], obviously with
containers. Even if you aren’t living your best containered life like Jessie,
it’s still a nice overview of how simple it is to plug and play [Wireguard].
I’m looking forward to it becoming a standard piece of Linux networking.

[installing and using Wireguard]: https://blog.jessfraz.com/post/installing-and-using-wireguard/
[Wireguard]: https://www.wireguard.com/
