USER=jupyter
REPO=datascience-notebook
TAG=786611348de1
all:
	docker run --rm -p 8888:8888 -v `pwd`/notebooks:/home/jovyan/work -it $(USER)/$(REPO):$(TAG)
