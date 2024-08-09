'''
Conda Setup
'''
echo [$(date)]: "START"
export _VERSION_=3.9
echo [$(date)]: "creating environment with python ${_VERSION_}"
conda create --prefix ./env python=${_VERSION_} -y
echo [$(date)]: "activate environment"
source activate ./env
echo [$(date)]: "install requirements"
pip install -r requirements.txt
echo [$(date)]: "initialize git repository"
git init
# to remove everything -
# rm -rf env/ .gitignore conda.yaml README.md .git/





'''
venv Setup
'''
# !/bin/bash

# echo [$(date)]: "START"

# # Define the Python version and virtual environment name
# export _VERSION_=3.9
# echo "Python version: $_VERSION_"
# export venv_name=".venv"


# # Create a virtual environment with the specified Python version and name
# echo "[$(date)]: Creating environment with Python ${_VERSION_}"
# python${_VERSION_} -m venv ${venv_name}
# # python -m venv ${venv_name}

# echo [$(date)]: "Activating environment"
# source ${venv_name}/Scripts/activate

# # echo [$(date)]: "Installing requirements"
# # pip install -r requirements.txt


# # echo [$(date)]: "Initializing git repository"
# # git init

# # # to remove everything -
# # # rm -rf env/ .gitignore conda.yaml README.md .git/


# echo "[$(date)]: END"

