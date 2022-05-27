# Dockerfile VERSION = v0.2
# docker build -t casperdevisser/isatools_environment:$VERSION . 
# docker push casperdevisser/isatools_environment:$VERSION

FROM continuumio/miniconda3

LABEL build_data="24-05-2022"
LABEL vendor="Radboudumc, CMBI"
LABEL usage="https://github.com/Xomics/Isatools_environment"
LABEL url="https://github.com/Xomics/Isatools_environment"

WORKDIR /isa_container

ARG DEBIAN_FRONTEND=noninteractive

#Installing git and nano
RUN apt-get update -y 
RUN apt install git
RUN apt install nano

#Adding Jupyer notebook and installing conda environment
COPY isa_parse.ipynb .
COPY isa_env.yml .
RUN conda env create -f isa_env.yml

CMD ["/bin/bash"]

ENTRYPOINT ["conda", "run", "--no-capture-output", "-n", "isa_env", "jupyter", "notebook", "--notebook-dir=/isa_container/", "--ip=*", "--port=8888", "--no-browser", "--allow-root"]