# PyTorch Notebook

## Build and run without CUDA support

```
$ docker build -t narumi/pytorch-notebook .
$ docker run -it --rm -p 8888:8888 narumi/pytorch-notebook
```