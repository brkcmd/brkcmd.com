+++
date = 2017-05-31T19:39:26-04:00
lastmod = 2018-04-12T21:44:38-04:00
title = "A prehistoric pattern."
categories = [ "Programming", "Python" ]
tags = [ "python", "videos", "pycon us", "pycon us 2017" ]
+++

It’s that time of year again... time to catch up on [this year’s PyCon US
talks](https://www.youtube.com/channel/UCrJhliKNQ8g0qoE_zvL8eVg/videos).  I’m
planning to post and comment on some of the ones that made me think the most.
To start, I really enjoyed Lennart Regebro’s “[Prehistoric Patterns in
Python](https://www.youtube.com/watch?v=V5-JH23Vk0I)”.

{{< youtube V5-JH23Vk0I >}}

Even though I think most of these old patterns have largely gone away,
sometimes the “Old Way” of doing things can resurface. A few years ago I was
talking with colleagues about nicer ways to accomplish some particularly hairy
problem, and I posted some code off the top of my head to our chat. Without
thinking twice about it I used the old-style form `iterator.next()` rather
than the now-standard `next(iterator)` (standard [since Python 2.6 in
2008](https://docs.python.org/3/whatsnew/2.6.html)!) and, yes, I got the
appropriate amount of chiding over it. So I am big believer in the occasional
check-in like Lennart’s talk, to help make sure that we’re going about things
in the best way possible.
