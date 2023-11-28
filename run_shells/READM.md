
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


    
