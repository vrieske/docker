#!/bin/bash

VERSION=0.1
docker build -f ./Dockerfile -t  kechans/dockertest:v${VERSION} .
