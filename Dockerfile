FROM golang:1.17 AS build

ARG FRP_VERSION=0.38.0
ARG MODE=frpc

USER root
WORKDIR /root

RUN cd /root \
    && git clone https://github.com/fatedier/frp.git --depth=1 --branch=${FRP_VERSION} \
    && cd frp \
    make ${MODE}

FROM alpine:3.15

COPY --from=build /root/frp/bin/${MODE} /usr/bin/${MODE}
COPY --from=build /root/frp/conf/${MODE}.ini /etc/frp/${MODE}.ini

ENTRYPOINT /usr/bin/${MODE} -c /etc/frp/${MODE}.ini
