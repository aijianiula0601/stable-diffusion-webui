#!/bin/bash

set -ex

curdir=$(pwd)
echo "curdir:$curdir"
cd "$curdir" || exit


cd ../



#------------------------------------------------------------------------
# 启动中遇到的主要问题还是环境问题
# 这里在v100_f165中采用docker方式启动，
# 修改: webui-user.sh 中 python_cmd、install_dir变量，去掉webui.sh中root要求
#------------------------------------------------------------------------



CUDA_VISIBLE_DEVICES=0 \
bash cp_wehui.sh --server-name 202.168.100.165 --enable-insecure-extension-access
#bash cp_wehui.sh --server-name 127.0.0.1 --enable-insecure-extension-access