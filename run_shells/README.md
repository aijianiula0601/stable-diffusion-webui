- 说明

    最好是切换到tag分支，最后一次部署成功是切换到v1.6.0

- 修改webui.sh

    把里面root要求去掉

- 修改webui-user.sh
    
    修改下面的目录
    
    install_dir="/workspace/hjh/pycharm_projects/image/text2img/tmp"
    
    执行conda环境的python路径

python_cmd="python3"

- 下载模型

    安装lfs: apt-get install git-lfs

    git lfs install

    再在目录下面：git clone https://huggingface.co/Runwayml/stable-diffusion-v1-5

- 启动

bash webui.sh --listen --port 2001