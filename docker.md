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
