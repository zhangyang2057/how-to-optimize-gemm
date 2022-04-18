#!/bin/bash

export PATH=$PATH:/home/zhangyang/workspace/tools/t-head/v2.2.3/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.2.3/bin

old=${1:-MMult0.cpp}
opt=${2:-MMult0.cpp}
rm -rf out
mkdir out
pushd out
cmake -DCMAKE_BUILD_TYPE=Release                    \
      -DCMAKE_INSTALL_PREFIX=`pwd`                  \
      -DCMAKE_TOOLCHAIN_FILE=../cmake/Riscv64.cmake \
      -DOPT=${opt}                                  \
      ..

make -j && make install
popd

scp out/bin/sgemm root@192.168.1.3:~/gemm/
ssh root@192.168.1.3 "cd ~/gemm; ./run.sh > output.m"
scp root@192.168.1.3:~/gemm/output.m .
echo "version = '${opt}';" > output_${opt}.m
cat output.m >> output_${opt}.m
rm output.m

python3 ./PlotAll.py output_${old}.m output_${opt}.m