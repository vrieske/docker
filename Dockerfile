# Dockerfile
FROM golang:1.18
RUN mkdir /src
ADD . /src
WORKDIR /src

RUN go env -w GO111MODULE=on
RUN go env -w GOPROXY=https://goproxy.cn,direct
RUN go build -o main main.go
RUN chmod u+x main

WORKDIR /app
ENV TZ Asia/Shanghai

RUN cp /src/main /app/main
EXPOSE 8080
ENTRYPOINT ["/app/main"]
