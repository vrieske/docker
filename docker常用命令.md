## docker常用命令

### 镜像命令

#### 1 拉取镜像

docker pull images

#### 2 查看镜像

docker images

#### 3 删除镜像(先删除运行这个镜像的容器在删除镜像)

docker rmi image_name

#### 4 运行镜像到容器     
以后台模式启动一个容器,名字叫dockerTest      
将容器的 8080 端口映射到主机的 9999 端口      
镜像的名字叫 kechans/dockertest:v0.1     
docker run -d -p 9999:8080 --name dockerTest  kechans/dockertest:v0.1 
在主机可以使用 curl 127.0.0.1:9999/hi 

### 容器命令

#### 1 哪些容器在运行 

docker ps -a 

#### 2 容器进行启动

docker start container_id 

#### 3 容器进行重启

docker restart  container_id 

#### 4 容器进行停止

docker stop container_id 

#### 5 进入容器中

docker exec -it container_id /bin/bash    或者    docker exec -it container_id sh    
docker attach container_id 

#### 6 运行容器中的镜像（第一次启动使用这个命令,主动stop后要用restart命令启动）

docker run -t -i container_id 	

#### 7 删除容器(先stop容器才能执行删除)

docker rm container_id 
#### 8 查看容器日志        
docker logs container_id -f 
#### 9 docker启动失败，查看失败日志   
先查看容器id是多少 docker ps | grep container 找到id     
然后运行 docker inspect --format '{{.LogPath}}' container_id    
在 cat 出来的日志文件
