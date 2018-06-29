+++
title = "Fridays Are For Learning, 2018-W26."
date = 2018-06-29T10:18:02-04:00
tags = [
    "fafl", "python", "kubernetes", 
]
categories = ["Learning"]
series = ["Fridays Are For Learning"]
+++

Fridays are for learning.[^1] These are some interesting links for the week
ending June 29, 2018.

[^1]: If your work won’t let you spend even 10-20% of your time keeping up to
      date with your profession, quit your job and find a better one!

* This week’s big news (for me anyway): [Python 3.7] is out!

[Python 3.7]: https://www.python.org/downloads/release/python-370/

* [Cool new features in Python 3.7]. My favorites are `from __future__ import
annotations` to enable lazy parsing of type annotations, `importlib.resources`
to replace simple usages of the much-heavier `pkg_resources`, and making
ordered dictionaries a requirement of the language instead of just an
implementation detail. Great stuff!

[Cool new features in Python 3.7]: https://realpython.com/python37-new-features/

* [How not to structure your database-backed web applications]. An empirical
study of performance issues in web apps in the wild.

[How not to structure your database-backed web applications]: https://blog.acolyer.org/2018/06/28/how-_not_-to-structure-your-database-backed-web-applications-a-study-of-performance-bugs-in-the-wild/

* [Kubernetes 1.11]! Really excited to see CoreDNS promoted to replace
`kube-dns`, as well as beta support for dynamic kubelet configuration.

[Kubernetes 1.11]: https://kubernetes.io/blog/2018/06/27/kubernetes-1.11-release-announcement/

* [The Right Way™ to do serverless in Python]. I love these opinionated guides
because even when I disagree with them I find them useful in challenging my
own thinking.

[The Right Way™ to do serverless in Python]: https://read.iopipe.com/the-right-way-to-do-serverless-in-python-e99535574454
