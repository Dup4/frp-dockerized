# frp-dockerized

## frps

[![](https://dockeri.co/image/dup4/frps)](https://hub.docker.com/r/snowdreamtech/frps)

start frpc:

```bash
docker run \
    --restart=always \
    --net=host \
    -d \
    --name frps \
    -v ${PWD}/frps.ini:/root/frps.ini \
    dup4/frps
```

## frpc

[![](https://dockeri.co/image/dup4/frpc)](https://hub.docker.com/r/snowdreamtech/frpc)

start frpc:

```bash
docker run \
    --restart=always \
    --net=host \
    -d \
    --name frpc \
    -v ${PWD}/frpc.ini:/root/frpc.ini \
    dup4/frpc
```
