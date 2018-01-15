# PyTorch Notebook

## Build and run without CUDA support

```
$ docker build -t narumi/pytorch-notebook .
$ docker run -it --rm -p 8888:8888 narumi/pytorch-notebook
```

## Build and run with CUDA 8.0

```
$ docker build -f Dockerfile.cuda80 -t narumi/pytorch-notebook-cuda80 .
$ docker run -it --rm -p 8888:8888 narumi/pytorch-notebook-cuda80
```

## Build and run with CUDA 9.0

```
$ docker build -f Dockerfile.cuda90 -t narumi/pytorch-notebook-cuda90 .
$ docker run -it --rm -p 8888:8888 narumi/pytorch-notebook-cuda90
```