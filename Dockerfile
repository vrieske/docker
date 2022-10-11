FROM golang

# 为我们的镜像设置必要的环境变量
ENV GOPROXY="https://goproxy.cn,direct"
# 项目代码根目录(需要将目录替换为你自己的目录)
WORKDIR /home/ch/goCode/mygo
# 将代码复制到容器中
COPY . .
# 构建可执行文件，名称为mygin
RUN go build -o mygin .
# 容器中用于存放执行文件的运行目录
WORKDIR /dist
# 将二进制文件从宿主机的/home/ch/goCode/mygo/mygin 复制到容器的 /dist目录下
RUN cp /home/ch/goCode/mygo/mygin .
# 声明服务端口
EXPOSE 8080
# 启动容器时运行的命令
CMD ["/dist/mygin"]
