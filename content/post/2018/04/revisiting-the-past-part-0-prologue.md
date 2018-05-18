+++
title = "Revisiting a past project, part 0."
date = 2018-04-30T14:51:02-04:00
tags = [ "video compositing", "python", "web", "blender" ]
categories = [ "Programming", "Implementation" ]
series = [ "Revisiting a Past Project: Faces" ]
+++

Recently I’ve been thinking about how much easier it is to achieve quite
complex things these days compared to back in The Olden Days. In fact, it
almost feels like we suffer from a surfeit of mature, high quality pieces that
we can use to build almost anything.[^1]

[^1]: Accordingly, our goals have only gotten more ambitious, not unlike the
      way that computer systems in general expand to fill the increasing disk
      and memory resources available to them.

There’s one project I worked on in the past — many years ago now — that I
still think about from time to time; how would I accomplish those same tasks
now, with everything that’s easily available to a professional today? Which
parts are just plain easier, and which parts would I want to push even further
today?

The project was for a pedagogical web site, and the part I worked on was a
system in which photos of students’ faces were inserted into pre-filmed video
segments, which were then made available for the students to watch or download
as needed. (Other developers worked on the front-end portion of the system, of
course.) Even viewed in isolation, it’s an interesting problem with several
interesting technical problems: it requires the implementation of a tool to do
the compositing of the photo with the video file, managing asynchronous
long-running tasks for users, and secure storage and retrieval of the media in
any of a number of required formats. And, as always, the need to get **maximum
value** for **a minimum of cost**.

I won’t generally discuss much about the actual implementation of the original
project as it was very much a product of its time — if I remember correctly,
we were lucky to have access to EC2 and S3, and that was pretty much all that
was available for AWS services at the time. But I do want to mention a
significant part of the project that I was lucky enough to simply have given
to me back then: the pre-filmed videos all had tracking data (tracking the
location of the actor’s head in each frame) already acquired. At the time the
project asked their video editor to do this as an additional service, but
since we are starting from scratch we’ll have to come up with something
ourselves. This is our first instance of something that has become… well, if
not *easier*, then at least somewhat more accessible: we don’t have to use an
expensive proprietary program to do this anymore; now we can accomplish the
same thing via [Blender].

[Blender]: https://www.blender.org/

To be fair, you still have to do a little work to convince Blender to do what
you want; there isn’t (to my knowledge, as of this writing) any menu item to
directly export this kind of data, and you do need to understand how Blender
works well enough to get it to generate the data in the first place. But once
I understood the process, with some trial and error it was comparatively easy
to generate some tracking data for a given video, such as [this excerpt] from
the public domain Charlie Chaplin classic film <i>[The Kid]</i> (warning, the
audio is rather loud in this clip):

[this excerpt]: https://www.youtube.com/watch?v=qNseEVlaCl4
[The Kid]: https://en.wikipedia.org/wiki/The_Kid_(1921_film)

{{< youtube qNseEVlaCl4 >}}

The key insight to using Blender for this purpose is to realize that it
already has a feature that is very close to (but not exactly) the one that we
want, and then that we can convince it to do what we want anyway. In this
case, the feature is something called “[motion tracking]” (also known as
“camera solving”), and its main use is as a way to provide data for how a
scene moves in the frame *due to the motion of the camera itself*. This data
is used to make sure that CG objects you composite into the scene move in line
with the real objects in rest of the scene. (Here’s [a quick tutorial] on
using Blender for this purpose.)

[motion tracking]: https://docs.blender.org/manual/en/dev/editors/movie_clip_editor/tracking/introduction.html
[a quick tutorial]: https://www.youtube.com/watch?v=kzym73lhmD4

By considering the situation in reverse (i.e., that it is not the **camera**
that moves, but the **object**), it should be obvious that this is the exact
same thing as object tracking: associate your tracker with some object in the
footage and then track where it goes in the frame. In the end we are going to
composite a photo over Chaplin’s head, so we used a large tracker box to cover
the whole thing, which also allows the box to grow and shrink as Chaplin moves
toward and away from the camera in the frame, but it does require additional
manual adjustments to keep the tracking going due to things like head turns
and nodding.

The only remaining problem is how to get the data out of Blender. For this, we
can make use of Blender’s extreme extensibility, and write a small script that
iterates over our tracker paths and outputs the coordinates of the tracker and
the corners of the tracking box at each frame, based on some
[fragments](https://blender.stackexchange.com/questions/65518/export-track-markers-to-csv)
of [code](https://gist.github.com/groakat/e7d8394d57fd4d3fe016) floating
around in Blender land.

```py3
"""Python 3 Blender script to output tracker data for each frame of a clip."""
from functools import reduce

import bpy  # Blender interface module


def process_clip(clip):
    for ob in clip.tracking.objects:
        for track in ob.tracks:
            process_track(track, ob, clip)


def process_track(track, ob, clip):
    fn = '{0}_{1}_tr_{2}.csv'.format(
        clip.name.rsplit('.')[0], ob.name, track.name
    )
    with open(fn, 'w') as fh:
        save_tracking(fh, track, clip)


def save_tracking(fh, track, clip):
    width, height = clip.size
    for framenum in range(clip.frame_duration):
        marker = track.markers.find_frame(framenum)
        if marker:
            coords = marker.co.xy
            corners = marker.pattern_corners
            corners = reduce(lambda x,y: x+y, map(list, corners))
            corners = [
                corners[0]*width, corners[1]*height,
                corners[2]*width, corners[3]*height,
                corners[4]*width, corners[5]*height,
                corners[6]*width, corners[7]*height
            ]
            print(','.join(map(str, [
                framenum,
                coords[0]*width,
                coords[1]*height,
                *corners
            ])), file=fh)


for clip in bpy.data.movieclips:
    process_clip(clip)
```

This will write to a file, one for each track in the Blender project. Later we
will use these coordinates to paste the user-supplied image, but we can also
use them to generate some debug output, such as simply marking the tracking
location with a box, like so:

{{< figure src="/post/2018/04/example-composite.png" >}}

With these two things (the source video and the tracking data), we are ready
to begin. Next time I’ll discuss a general design for the complete system, and
then we’ll start implementing.
