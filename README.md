# frp-dockerized

## Usage

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
