# Work

## Build

```
$ docker build -t narumi/work .
```

## Run

```
$ nvidia-docker run -d -v $(pwd):/workspace -p 8888:8888 narumi/work
```
