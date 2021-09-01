FROM continuumio/miniconda3

LABEL build_data="13-08-2021"
LABEL vendor="Radboudumc, CMBI"
LABEL usage="https://atlassian-gen.umcn.nl/bitbucket/projects/TML/repos/ngms-isa-casperdevisser/browse"
LABEL url="https://atlassian-gen.umcn.nl/bitbucket/projects/TML/repos/ngms-isa-casperdevisser/browse"

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

ENTRYPOINT ["conda", "run", "--no-capture-output", "-n", "isa_env", "jupyter", "notebook", "--notebook-dir=/isa_container/", "--ip='*'", "--port=8888", "--no-browser", "--allow-root"]