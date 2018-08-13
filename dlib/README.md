# dlib

## Build with CPU

```
docker build --tag narumi/dlib --build-arg BASE_IMAGE=ubuntu:18.04 .
```

## Build with GPU

```
docker build --tag narumi/dlib:cuda92 --build-arg BASE_IMAGE=nvidia/cuda:9.2-cudnn7-devel-ubuntu18.04 .
```
