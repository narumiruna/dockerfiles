# PyTorch Notebook

## Build and run with CUDA 8.0

```
$ docker build -f Dockerfile.cuda80 -t narumi/pytorch-notebook-cuda80 .
$ nvidia-docker run -it --rm -p 8888:8888 narumi/pytorch-notebook-cuda80
```