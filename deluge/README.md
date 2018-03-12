# deluge + rclone + flexget

```
$ docker build -t deluge .
$ docker run -d -v ~/Downloads:/root/Downloads -p 8112:8112 deluge deluge-web
```
