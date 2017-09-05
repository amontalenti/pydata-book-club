USER=jupyter
REPO=datascience-notebook
TAG=786611348de1
.PHONY : html pdf clean notebook
bash:
	docker run --rm -v `pwd`/notebooks:/home/jovyan/work -it $(USER)/$(REPO):$(TAG) bash
notebook:
	docker run --rm -p 8888:8888 -v `pwd`/notebooks:/home/jovyan/work -it $(USER)/$(REPO):$(TAG)

html:
	docker run --rm -v `pwd`/notebooks:/home/jovyan/work -it $(USER)/$(REPO):$(TAG) make -C /home/jovyan/work html
pdf:
	docker run --rm -v `pwd`/notebooks:/home/jovyan/work -it $(USER)/$(REPO):$(TAG) make -C /home/jovyan/work pdf
clean:
	rm -rf notebooks/*.html
	rm -rf notebooks/*.pdf
