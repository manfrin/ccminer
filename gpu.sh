#!/bin/bash
echo "Checking for CUDA and installing."
# Check for CUDA and try to install.
if ! dpkg-query -W cuda-9-1; then
  # The 16.04 installer works with 16.10.
  curl -O http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/cuda-repo-ubuntu1604_9.1.85-1_amd64.deb
  dpkg -i ./cuda-repo-ubuntu1604_9.1.85-1_amd64.deb
  apt-get update
  apt-get install cuda-9-1 -y
fi
# Enable persistence mode
nvidia-smi -pm 1

# K80 specific
# nvidia-smi -ac 2505,875
# nvidia-smi --auto-boost-default=DISABLED
