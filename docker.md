### run docker images
docker run -it -v /data --name volume sandiao/xview:v2 bash


### tag images
docker tag xview2018/baseline:vanilla-v1-1 sandiao/xview:v2


### delete images and container
sudo docker rm 400a827c9d8f
sudo docker rmi xx.image



### dcoker run container
option1
$ docker run -it <image-id of above image> bash
option2
$ docker run -it --volumes-from <id-of-above-container> ubuntu:14.04 bash

### docker stop container
difference of docker images and commands



You need to login "sudo docker login" before push your docker image


### list
docker container ls -a
docker images


### 设定镜像从头构建一个container，并使用bin/bash进入这个container
docker run -it sandiao/xview:v2  /bin/bash


### restart a docker after it has been exited
You can restart an existing container after it exited and your changes are still there.
docker start  `docker ps -q -l` # restart it in the background
docker attach `docker ps -q -l` # reattach the terminal & stdin


### 启动一个Volume_Container容器，包含两个数据卷
docker run -v /data --name Volume_Container sandiao/xview:v2  /bin/bash
  
  
#设定镜像从头构建一个container，并使用bin/bash进入这个container
docker run -it sandiao/xview:v2  /bin/bash


### restart a docker after it has been exited
You can restart an existing container after it exited and your changes are still there.
docker start  `docker ps -q -l`    # restart it in the background
docker attach `docker ps -q -l` # reattach the terminal & stdin


#启动一个Volume_Container容器，包含两个数据卷(无效)
sudo docker run -v /data --name vol /bin/bash
  

### swithc coantaner mode
ctrl + p + ctrl + q


### cp
sudo docker cp xview_class_labels.txt  5002aac311f6:/usr/src/app/label.txt


### save contaner to a new version image
docker commit container_id  new_image_name
  
