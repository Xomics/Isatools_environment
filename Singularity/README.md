# Dockerfile

Dockerfile is used to build docker container with the required conda environment (isa_env) for isatools. 
This image is pushed to the cmbi registry (https://gitlab.cmbi.umcn.nl/x-omics-action-dataset/fairification-tools)
This image is used as base for the singularity container

# Singularity

The singularity container is built with the definition file (isa.def), which used the isa_singularity docker container as base.
