
0. [Python Setup][00]
1. [PyData Environment Setup][01]
2. [Using pandas and matplotlib][02]

[00]: https://github.com/amontalenti/pydata-book-club/blob/master/docs/00_python_setup.md
[01]: https://github.com/amontalenti/pydata-book-club/blob/master/docs/01_pydata_env_setup.md
[02]: https://github.com/amontalenti/pydata-book-club/blob/master/docs/02_pd_mpl.md

[Makefile](Makefile) for using [Jupyter Notebook Data Science Stack](https://hub.docker.com/r/jupyter/datascience-notebook/)

```
USER=jupyter
REPO=datascience-notebook
TAG=786611348de1
.PHONY : html pdf clean notebook
notebook:
	docker run --rm -p 8888:8888 -v `pwd`/notebooks:/home/jovyan/work -it $(USER)/$(REPO):$(TAG)

html:
	docker run --rm -v `pwd`/notebooks:/home/jovyan/work -it $(USER)/$(REPO):$(TAG) make -C /home/jovyan/work html
pdf:
	docker run --rm -v `pwd`/notebooks:/home/jovyan/work -it $(USER)/$(REPO):$(TAG) make -C /home/jovyan/work pdf
clean:
	rm -rf notebooks/*.html
	rm -rf notebooks/*.pdf
```		

Usage

```
$ make notebook 
$ make html
$ make pdf
```

