PYTHON ?= python3
PREF_SHELL ?= bash
GITREF=$(shell git rev-parse --short HEAD)
GITREF_FULL=$(shell git rev-parse HEAD)

####################################
# Docker image & dist
####################################

VERSION = "0.1.0"
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
# Docker
####################################
IMAGE_JHUB ?= $(IMAGE_ORG)/$(IMAGE_NAME):jhub
IMAGE_UBUNTU ?= $(IMAGE_ORG)/$(IMAGE_NAME):ubuntu
JUPYTER_ENABLE_LAB ?=

image-jhub: Dockerfile.jhub pyproject.toml | docker
	docker build --build-arg PYPROJECT_TOML=$(word 2,$^) \
		-t $(IMAGE_JHUB) \
		-f $< .

image-ubuntu: Dockerfile pyproject.toml | docker
	docker build --build-arg PYPROJECT_TOML=$(word 2,$^) \
		-t $(IMAGE_UBUNTU) \
		-f $< .

jhub: image-jhub | docker
	docker run --rm -p 8888:8888 \
		-v $$(dirname ${PWD}):/home/jovyan/work \
		-e JUPYTER_ENABLE_LAB=yes \
		$(IMAGE_JHUB) \
		jupyter lab

