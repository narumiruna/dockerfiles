# WIP: deluge + rclone + flexget

## Usage
```
$ docker build -t deluge .
$ docker run -d -v ~/Downloads:/root/Downloads -p 8112:8112 deluge deluge-web
```
