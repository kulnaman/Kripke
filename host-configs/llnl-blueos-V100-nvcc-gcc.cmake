#
# Copyright (c) 2014-23, Lawrence Livermore National Security, LLC
# and Kripke project contributors. See the Kripke/COPYRIGHT file for details.
# 
# SPDX-License-Identifier: (BSD-3-Clause)
#

set(RAJA_COMPILER "RAJA_COMPILER_GNU" CACHE STRING "")

set(CMAKE_C_COMPILER   "/usr/tce/packages/gcc/gcc-12.2.1/bin/gcc" CACHE PATH "")
set(CMAKE_CXX_COMPILER "/usr/tce/packages/gcc/gcc-12.2.1/bin/g++" CACHE PATH "")

set(CMAKE_CXX_FLAGS "" CACHE STRING "")
set(CMAKE_CXX_FLAGS_RELEASE "-O3 -ffast-math " CACHE STRING "")
set(CMAKE_CXX_FLAGS_RELWITHDEBINFO "-O3 -g -ffast-math " CACHE STRING "")
set(CMAKE_CXX_FLAGS_DEBUG "-O0 -g " CACHE STRING "")

set(ENABLE_CHAI On CACHE BOOL "")
set(ENABLE_CUDA On CACHE BOOL "")
set(ENABLE_OPENMP Off CACHE BOOL "")
set(ENABLE_MPI On CACHE BOOL "")

set(CMAKE_CUDA_ARCHITECTURES "70" CACHE STRING "")
set(CMAKE_CUDA_FLAGS "-restrict -gencode=arch=compute_70,code=sm_70 " CACHE STRING "")
set(CMAKE_CUDA_FLAGS_RELEASE "-O3 --expt-extended-lambda " CACHE STRING "")
set(CMAKE_CUDA_FLAGS_RELWITHDEBINFO "-O3 -lineinfo --expt-extended-lambda " CACHE STRING "")
set(CMAKE_CUDA_FLAGS_DEBUG "-O0 -g -G --expt-extended-lambda " CACHE STRING "")
set(CMAKE_CUDA_HOST_COMPILER "${CMAKE_CXX_COMPILER}" CACHE STRING "")


