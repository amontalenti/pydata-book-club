# PyData Environment Setup (#01)

## Bare install: setup miniconda

- Download the [installer for your platform](http://conda.pydata.org/miniconda.html).
- Update conda (yes, this is meta) with `conda update conda`.

## pyenv install: setup miniconda3-latest version

- Install a miniconda version with `pyenv install miniconda3-latest`
- Activate the environment with `pyenv shell miniconda3-latest`
- Update conda with `conda update conda`

## Verify the Python interpreter

    > python -V
    Python 3.6.1 :: Continuum Analytics, Inc.

You should see the "Continuum Analytics" part if you are using conda's Python
interpreter.

To deactivate your conda environment, either close your shell or use the
`deactivate` script.

## Activate environment

Create a "pydata" environment with `pandas` and deps,

`conda create --name pydata pandas`

Activate the environment in your shell (or cmd.exe for Windows):

- Linux, Mac: `source activate pydata`
- Windows: `activate pydata`

Note that if you're using pyenv, this will automatically become a pyenv
version, too, with the long-winded name as follows:
`miniconda3-latest/envs/pydata`). But the conda `source activate` shortcut works
just fine. Here is a sample shell session that shows it working in my shell. (I
have a special shell prompt that shows me the currently activated Python
environment in parentheses.)

```text
» ~
$ pyenv shell miniconda3-latest            (p» system)
» ~
$ source activate pydata           (miniconda3-latest)
pyenv-virtualenv: activate miniconda3-latest/envs/pydata
» ~
$             (pydata | miniconda3-latest/envs/pydata)
```

## Install and run Jupyter (aka IPython Notebook)

Install ipython + ipython notebook via the jupyter project:

`conda install install jupyter`

To get it running, just do:

`jupyter-notebook`

This will put something like this in your console:

```
    Copy/paste this URL into your browser...
        http://localhost:8888/?token=ed36d...
```

Just paste that link into your browser, and you should see a notebook
application that lets you run Python in your browser.
