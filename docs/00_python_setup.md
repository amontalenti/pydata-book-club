# Python Setup


## Python 3.x basic local setup

Confirm that you have `python` installed locally and with a version 3.x.

Using [pyenv][pyenv], make sure you have a Python 3.x version installed. You can check for available 3.x versions like this:

`pyenv install --list | egrep '^3.6.[0-9]+'`

Then install that version, e.g.

`pyenv install 3.6.1`

Once installed, you can activate it using:

`pyenv shell 3.6.1`

[pyenv]: https://github.com/pyenv/pyenv-installer#installation--update--uninstallation

## Running

Make sure you can run:

    python -c "print(1 + 1)"

And that you get "2" as output.

## Editor setup

Learn about a programming text editor -- I suggest either [nano](http://www.nano-editor.org/) or [sublime text 2](http://www.sublimetext.com/2). This will let you create your own Python files (.py files) and run them from the command line. Create a simple "Hello, world" program.

Then, create a program, e.g. using the [for loop example](https://github.com/amontalenti/fast-python-slides/blob/master/index.rst#slide-zero).

## Zen examples

Copy-paste (or type!) these code examples into your Python REPL or editor to practice using Python and seeing the effects.

[Gist: Zen of Python examples](https://gist.github.com/amontalenti/637e0a4faeb64d6d3c22)

## Some Quests

It's usually best to first learn Python using little quests. Here are two problems worth working through to learn some basics before diving into the pydata stack:

### Reshape some CSV data

Here is some CSV data::

    feature,area
    A,32.5
    A,45.6
    A,42.1
    B,1.5
    B,6.08
    B,5.1
    C,5.9
    C,16.5
    C,32.5
    D,45.6
    D,42.1
    D,6.08

Imagine we need to do the following:

- group by the "feature" column and sum those values, to generate a third column, "sum by feature"
- for each row, calculate the percentage of the "sum by feature" of a given individual row

Don't use Pandas for this -- try to just use `str()`, `int()`, `list`/`dict`, and `str.split()` or the `csv.reader()` module.

### Write a URL parser

Expect to receive a URL of the format you would find on the web:

"http://www.linked.com/in/andrewmontalenti"

Implement a function, ``url_parse``, that splits this string into dictionary with the component parts, including: scheme, port, host, path, fragment (hash), query string. For the above, it would be:

    { "scheme": "http", "host": "www.linkedin.com",
    "path": "/in/andrewmontalenti",
    "port": 80, "fragment": None, "query": None }
