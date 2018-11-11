#!/usr/bin/env bash

docker build -t caffe2_tutorials .
docker run --rm -it -v ${PWD}:/tutorials -w /tutorials -p 8888:8888 caffe2_tutorials
