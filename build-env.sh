#!/usr/bin/env -S bash --login
set -euo pipefail
# This script is used to install any custom packages required by the algorithm.

# Get current location of build script
basedir=$( cd "$(dirname "$0")" ; pwd -P )
echo "basedir:"
echo $basedir

conda env update -f ${basedir}/environment.yml

# later add other libraries ...

source activate my_env

pip install -r ${basedir}/requirements.txt

pip install pyogrio

pip install torch==2.12.0 torchvision --index-url https://download.pytorch.org/whl/cpu
pip install -U segmentation-models-pytorch

pip install -U "huggingface_hub[cli]"

pip install maap-py
pip install gdown
pip install fiona
