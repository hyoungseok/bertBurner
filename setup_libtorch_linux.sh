#!/bin/bash

rm -rf libtorch

wget https://download.pytorch.org/libtorch/cpu/libtorch-shared-with-deps-latest.zip -O ./libtorch.zip
unzip ./libtorch.zip -d ./ 
rm ./libtorch.zip

wget https://github.com/intel/mkl-dnn/releases/download/v0.18/mklml_lnx_2019.0.3.20190220.tgz -O ./mklml.tgz
tar zxvf ./mklml.tgz -C ./
mv ./mklml_lnx_2019.0.3.20190220/lib/* ./libtorch/lib/
rm -rf ./mklml*
