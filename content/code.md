+++
title = "Code Examples"
draft = true
+++

```md
This is an example of *markdown*. [It] can be very useful.

[It]: https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet#a-really-long-url
```

```python3
from urllib.parse import urlparse

import mf2py

def dump_microformats(url):
    """Return the structured data found via microformats contained by the file
    at ``url``.

    If ``url`` is a local path, the file is read directly. If it is a URL, it
    is passed to ``mf2py.parse()`` directly."""

    # Specify a HTML parser explicitly to avoid warning from BeautifulSoup.
    params = {'html_parser': 'html5lib'}

    if urlparse(url).scheme:
        params['url'] = url
    else:
        with open(url) as f:
            params['doc'] = f.read()

    return mf2py.parse(**params)
```
