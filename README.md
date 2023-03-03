1 运行build.sh    
2 docker images 查看镜像   
3 启动容器   
容器的8080端口映射到主机的9999端口上    
docker run -d -p 9999:8080 --name containerName images:version    

4 curl主机接口是否ok    
curl 127.0.0.1:9999/hi   
