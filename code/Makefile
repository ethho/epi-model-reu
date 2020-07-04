PYTHON ?= python3
PREF_SHELL ?= bash
GITREF=$(shell git rev-parse --short HEAD)
GITREF_FULL=$(shell git rev-parse HEAD)

####################################
# Docker image & dist
####################################

VERSION = $(shell python setup.py --version)
IMAGE_ORG ?= enho
IMAGE_NAME ?= epi-models
IMAGE_TAG ?= $(VERSION)
IMAGE_DOCKER ?= $(IMAGE_ORG)/$(IMAGE_NAME):$(IMAGE_TAG)

####################################
# Sanity checks
####################################

PROGRAMS := git docker python singularity tox $(CC)
.PHONY: $(PROGRAMS)
.SILENT: $(PROGRAMS)

docker:
	docker info 1> /dev/null 2> /dev/null && \
	if [ ! $$? -eq 0 ]; then \
		echo "\n[ERROR] Could not communicate with docker daemon. You may need to run with sudo.\n"; \
		exit 1; \
	fi
python poetry singularity $(CC):
	$@ --help &> /dev/null; \
	if [ ! $$? -eq 0 ]; then \
		echo "[ERROR] $@ does not seem to be on your path. Please install $@"; \
		exit 1; \
	fi
tox:
	$@ -h &> /dev/null; \
	if [ ! $$? -eq 0 ]; then \
		echo "[ERROR] $@ does not seem to be on your path. Please pip install $@"; \
		exit 1; \
	fi
git:
	$@ -h &> /dev/null; \
	if [ ! $$? -eq 129 ]; then \
		echo "[ERROR] $@ does not seem to be on your path. Please install $@"; \
		exit 1; \
	fi

####################################
# Jupyterhub
####################################
IMAGE_JHUB ?= $(IMAGE_ORG)/$(IMAGE_NAME):jhub
JUPYTER_ENABLE_LAB ?=

image-jhub: Dockerfile.jhub requirements-jhub.txt | docker
	docker build --build-arg REQUIREMENTS=jhub/$(word 2,$^) \
		-t $(IMAGE_JHUB) \
		-f $< ..

jhub: image-jhub | docker
	docker run -p 8888:8888 \
		-v ${PWD}:/home/jovyan/work \
		-e JUPYTER_ENABLE_LAB=$(JUPYTER_ENABLE_LAB) \
		$(IMAGE_JHUB)

