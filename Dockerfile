# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.
FROM ubuntu:18.04

LABEL maintainer="Tejas Siripurapu Jupyter NB Server <tejas97siripruapu@gmail.com>"

RUN apt-get update && apt-get install -y python3 python3-pip git

RUN git clone https://github.com/teejas/jupyter-notebooks.git notebook
WORKDIR notebook

RUN ls && pip3 install -r requirements.txt && jupyter contrib nbextension install --user

EXPOSE 8888 8889

CMD jupyter-lab --ip=0.0.0.0 --port=8888 --no-browser --allow-root
