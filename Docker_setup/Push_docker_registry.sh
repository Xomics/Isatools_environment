# !/bin/bash

docker login registry.cmbi.umcn.nl/v1

docker image tag isa/jupyter registry.cmbi.umcn.nl/x-omics-action-dataset/fairification-tools/isa/jupyter

docker push registry.cmbi.umcn.nl/x-omics-action-dataset/fairification-tools/isa/jupyter