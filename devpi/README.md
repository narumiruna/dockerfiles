# Devpi

## Build and run

```
$ docker build -t narumi/devpi .
$ docker run -d -p 8080:8080 narumi/devpi
```

## Usage

```
[global]
index-url = http://<host>:8080/root/pypi/+simple/
trusted-host = <host>
```
