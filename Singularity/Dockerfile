FROM continuumio/miniconda3

RUN mkdir isa_workdir
RUN cd isa_workdir

RUN apt-get update -y 
RUN apt install git
RUN apt install nano

COPY isa_parse.ipynb .
COPY isa_env.yml .
RUN conda env create -f isa_env.yml