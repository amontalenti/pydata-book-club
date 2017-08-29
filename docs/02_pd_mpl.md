# Using pandas and matplotlib

## Using pandas

...

## Using matplotlib

You always want to start out importing both matplotlib the library/module and the "pyplot" interface, which is a "command-oriented" API that emulates the way that MATLAB's plotting interface works. It's probably the most popular way mpl is used, especially in notebooks.

```python
%matplotlib inline

import matplotlib as mpl
import matplotlib.pyplot as plt
```

The cell magic for IPython makes it so that graphs appear as static images in-line in your notebooks. You can replace "inline" with "notebook" to get an interactive version of the same, that allows you to dynamically control axes and zoom into areas.

## The funky "state machine" API

In an effort to emulate MATLAB, the pyplot interface uses a funky API that is not-quite-object-oriented. There are two primary classes: the `Figure` and the `Axes`. These are made using `plt.figure()` and `plt.axes()`.

When you invoke `plt.plot()`, it operates on *the last figure* you made. To quote the mpl documentation:

> At the top of the hierarchy is the matplotlib “state-machine environment” which is provided by the matplotlib.pyplot module. At this level, simple functions are used to add plot elements (lines, images, text, etc.) to the current axes in the current figure.

The second level is an "object-oriented interface", in which "pyplot is used only for a few functions such as figure creation, and the user explicitly creates and keeps track of the figure and axes objects." This is what happens if you call `plt.figure()` and `plt.axes()` explicitly.

Quoting the docs again:

> At this level, the user uses pyplot to create figures, and through those figures, one or more axes objects can be created. These axes objects are then used for most plotting actions.

There is a final level:

> For even more control – which is essential for things like embedding matplotlib plots in GUI applications – the pyplot level may be dropped completely, leaving a purely object-oriented approach.

I found this "matplotlib anatomy" graphic to be useful, too:

![](https://matplotlib.org/_images/anatomy1.png)

All of that can be found in the [usage FAQ][faq].

[faq]: https://matplotlib.org/faq/usage_faq.html
