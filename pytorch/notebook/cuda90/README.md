# PyTorch Notebook

## Build and run with CUDA 9.0

```
$ docker build -f Dockerfile.cuda90 -t narumi/pytorch-notebook-cuda90 .
$ nvidia-docker run -it --rm -p 8888:8888 narumi/pytorch-notebook-cuda90
```