#!/bin/bash
#Kripke does not support latest version of CUDA/12 and hence to use older version of GCC. 
#Also need to change the host-configs/llnl-blueos-V100-nvcc-gcc.cmake
hostname=$(hostname)
if [[ "$hostname" == lassen* ]];then
PREFIX_PATH=$BENCHMARK_PATH/benchmarks/Kripke/install_lassen
host_file=$BENCHMARK_PATH/benchmarks/kripke/host-configs/llnl-blueos-V100-nvcc-gcc.cmake
elif [[ "$hostname" == tioga* ]];then
PREFIX_PATH=$BENCHMARK_PATH/benchmarks/Kripke/install_tioga
host_file=$BENCHMARK_PATH/benchmarks/Kripke/host-configs/llnl-toss4-MI250X-rocm6-vernal.cmake
elif [[ "$hostname" =~ "palmetto" ]];then
PREFIX_PATH=$BENCHMARK_PATH/benchmarks/Kripke/install_palmetto
host_file=$BENCHMARK_PATH/benchmarks/Kripke/host-configs/palmetto_a100.cmake
fi
set -e #Exit on error
set -o pipefail #also consider pipe when exiting
ls
source ./module_file.sh
rm -rf build
mkdir build
cd build

cmake  -C $host_file -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=$PREFIX_PATH ..
make 
make install
cp -r kripke.exe $PREFIX_PATH
