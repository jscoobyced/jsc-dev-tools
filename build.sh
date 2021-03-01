#!/bin/bash

#docker build -t jscdroiddev/jsc-dev-tools:latest .
docker build -t jscdroiddev/jsc-net-dev-tools:3.1.201 -f Dockerfile.net .

#docker push jscdroiddev/jsc-dev-tools:latest
docker push jscdroiddev/jsc-net-dev-tools:3.1.201