# Dockerfile VERSION = v0.6
# docker build --build-arg BUILD_DATE=$(date -u +'%Y-%m-%dT%H:%M:%SZ') -t casperdevisser/isatools_environment:$VERSION . 
# docker push casperdevisser/isatools_environment:$VERSION

FROM continuumio/miniconda3

ARG DEBIAN_FRONTEND=noninteractive
ARG BUILD_DATE

LABEL org.label-schema.build-date=$BUILD_DATE
LABEL org.label-schema.vendor="Radboudumc, Medical Biosciences department"
LABEL maintainer="casper.devisser@radboudumc.nl"
LABEL usage="https://github.com/Xomics/Isatools_environment"
LABEL url="https://github.com/Xomics/Isatools_environment"

WORKDIR /isa_container

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