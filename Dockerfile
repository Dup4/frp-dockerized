FROM golang:1.17 AS build

ARG FRP_VERSION=0.38.0
ARG MODE=frpc

USER root
WORKDIR /root

RUN cd /root \
    && git clone https://github.com/fatedier/frp.git --depth=1 --branch=${FRP_VERSION} \
    && cd frp \
    && make ${MODE} \
    && mkdir build \
    && cp ./bin/${MODE} ./build/ \
    && cp ./conf/${MODE}.ini ./build/ \
    && cp ./docker_entry.sh ./build/

FROM alpine:3.15

ARG MODE=frpc

COPY --from=build /root/frp/build/* /root/

ENTRYPOINT ["/root/docker_entry.sh"]

CMD ["main-start"]
