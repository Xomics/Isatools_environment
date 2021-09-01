#/!bin/bash

read -p "Create new conda env(y/n)?" CONT

if [ "$CONT" == "n" ]; then
	echo "exit";
else
	echo "Creating new conda enviornment, choose name"
	read input_variable
	echo "Name $input_varaible was chosen";

	conda create --name $input_variable --clone root
	conda install -c anaconda nb_conda
	conda activate $input_variable 
	conda install -c bioconda isatools
	conda install -c anaconda ipykernel
	python -m ipykernel install --user --name=$input_variable --display-name "Python ($input_variable)"
fi

read -p "Create 'environment.yml', will overwrite if exist (y/n)?" CONT2

if [ "$CONT2" == "n" ]; then
	echo "exit";

else 
	conda env export > ${input_variable}.yml

fi
	