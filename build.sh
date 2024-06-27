#!/bin/bash
#Kripke does not support latest version of CUDA/12 and hence to use older version of GCC. 
#Also need to change the host-configs/llnl-blueos-V100-nvcc-gcc.cmake
PREFIX_PATH=$BENCHMARK_PATH/benchmarks/Kripke/install_lassen
set -e #Exit on error
set -o pipefail #also consider pipe when exiting
source module_file.sh
mkdir build
cd build
cmake .. -C ../host-configs/llnl-blueos-V100-nvcc-gcc.cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=$PREFIX_PATH
make -j
make install
cp -r kripke.exe $PREFIX_PATH
