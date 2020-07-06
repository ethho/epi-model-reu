FROM ubuntu:rolling

# apt-get
ENV TZ=America/New_York
RUN set -o vi && \
    apt-get update -yq && \
    apt-get upgrade -yq --no-install-recommends && \
    DEBIAN_FRONTEND="noninteractive" apt-get install -yq \
        python3 \
        python3-pip \
        python3-venv \
        vim \
        nodejs \
        npm \
        git \
        wget

# poetry
WORKDIR /root
RUN pip3 install poetry
ARG PYPROJECT_TOML=pyproject.toml
COPY $PYPROJECT_TOML /root/pyproject.toml
RUN poetry install -n && \
    poetry run jupyter labextension install nglview-js-widgets && \
    poetry run jupyter-nbextension enable nglview --py --sys-prefix

# Clustal Omega
RUN wget -O /usr/bin/clustalo http://www.clustal.org/omega/clustalo-1.2.4-Ubuntu-x86_64 && \
    chmod +x /usr/bin/clustalo


