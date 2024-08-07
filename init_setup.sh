# !/bin/bash

echo [$(date)]: "START"


# Define the Python version and virtual environment name
export _VERSION_=3.9
echo "Python version: $_VERSION_"
export venv_name="venv"


# Create a virtual environment with the specified Python version and name
echo "[$(date)]: Creating environment with Python ${_VERSION_}"
# The '-p' option specifies the Python version to use
# The '-m venv' option creates a new virtual environment named 'venv'
# The 'Scripts/activate' command activates the virtual environment
# Note: The 'Scripts' directory may vary depending on your operating system
python${_VERSION_} -m venv ${venv_name}

# echo [$(date)]: "Activating environment"
# source ./venv/Scripts/activate

echo [$(date)]: "Activating environment"
source ${venv_name}/Scripts/activate

echo [$(date)]: "Installing requirements"
pip install -r requirements.txt


echo [$(date)]: "Initializing git repository"
git init

# # to remove everything -
# # rm -rf env/ .gitignore conda.yaml README.md .git/


echo "[$(date)]: END"

