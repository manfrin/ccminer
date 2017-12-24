#!/bin/bash
echo "Checking for CUDA and installing."
# Check for CUDA and try to install.
dpkg -i cuda-repo-ubuntu1604_9.1.85-1_amd64.deb
apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/7fa2af80.pub
apt-get update
apt-get install cuda -y
# Enable persistence mode
nvidia-smi -pm 1

# K80 specific
# nvidia-smi -ac 2505,875
# nvidia-smi --auto-boost-default=DISABLED
