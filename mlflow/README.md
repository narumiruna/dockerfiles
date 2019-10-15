# MLflow Dockerfile

## Build

```sh
$ docker build -f Dockerfile -t mlflow .
```

## Run
```sh
$ docker run -d -p 5000:5000 -v /path/to/mlruns:/mlruns mlflow
```