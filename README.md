# docker
学习docker容器的项目
### 编译
运行build.sh编译二进制文件
### 运行
docker images 找到镜像对应的容器id    
docker run -it -p 8080:8080 container_id  
### 进入容器
docker exec -it container_id /bin/bash
