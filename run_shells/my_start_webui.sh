#!/bin/bash

set -ex

curdir=$(pwd)
echo "curdir:$curdir"
cd "$curdir" || exit


cd ../



#------------------------------------------------------------------------
# 启动中遇到的主要问题还是环境问题
# 服务器：v100_f165中采用docker   sd_webui
# 环境：conda activate sda
# 修改: webui-user.sh 中 python_cmd、install_dir变量，去掉webui.sh中root要求
#------------------------------------------------------------------------



CUDA_VISIBLE_DEVICES=0 \
bash cp_wehui.sh --server-name 202.168.100.165 --enable-insecure-extension-access --port 2001
#bash cp_wehui.sh --server-name 127.0.0.1 --enable-insecure-extension-access