#
# Copyright (c) 2014-23, Lawrence Livermore National Security, LLC
# and Kripke project contributors. See the Kripke/COPYRIGHT file for details.
# 
# SPDX-License-Identifier: (BSD-3-Clause)
#

set(RAJA_COMPILER "RAJA_COMPILER_GNU" CACHE STRING "")

set(CMAKE_C_COMPILER   "/software/slurm/spackages/linux-rocky8-x86_64/gcc-12.3.0/openmpi-5.0.1-kj4zehabjo4t3kp55yr7g6qfyjalkmvu/bin/mpicc" CACHE PATH "")
set(CMAKE_CXX_COMPILER "/software/slurm/spackages/linux-rocky8-x86_64/gcc-12.3.0/openmpi-5.0.1-kj4zehabjo4t3kp55yr7g6qfyjalkmvu/bin/mpicxx" CACHE PATH "")

set(CMAKE_CXX_FLAGS "" CACHE STRING "")
set(CMAKE_CXX_FLAGS_RELEASE "-O3 -ffast-math" CACHE STRING "")
set(CMAKE_CXX_FLAGS_RELWITHDEBINFO "-O3 -g -ffast-math" CACHE STRING "")
set(CMAKE_CXX_FLAGS_DEBUG "-O0 -g" CACHE STRING "")
set(CUDA_TOOLKIT_ROOT_DIR "/software/slurm/spackages/linux-rocky8-x86_64/gcc-12.3.0/cuda-12.3.0-p2hoh7xwcu52zilqglv3nnc5bwnritue" CACHE PATH "")
set(ENABLE_CHAI On CACHE BOOL "")
set(ENABLE_CUDA On CACHE BOOL "")
set(ENABLE_OPENMP Off CACHE BOOL "")
set(ENABLE_MPI On CACHE BOOL "")

set(CMAKE_CUDA_ARCHITECTURES "70;80" CACHE STRING "")
set(CMAKE_CUDA_FLAGS "-restrict -gencode=arch=compute_70,code=sm_70 -gencode=arch=compute_80,code=sm_80" CACHE STRING "")
set(CMAKE_CUDA_FLAGS_RELEASE "-O3 --expt-extended-lambda" CACHE STRING "")
set(CMAKE_CUDA_FLAGS_RELWITHDEBINFO "-O3 -lineinfo --expt-extended-lambda" CACHE STRING "")
set(CMAKE_CUDA_FLAGS_DEBUG "-O0 -g -G --expt-extended-lambda " CACHE STRING "")
set(CMAKE_CUDA_HOST_COMPILER "${CMAKE_CXX_COMPILER}" CACHE STRING "")


