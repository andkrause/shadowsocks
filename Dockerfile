FROM ghcr.io/shadowsocks/ssserver-rust:v1.24.0

RUN apk add --no-cache iptables \
    && mkdir /overwrite

WORKDIR /overwrite

ADD docker-entrypoint.sh .

ENTRYPOINT [ "docker-entrypoint.sh" ]

CMD [ "ssserver", "--log-without-time", "-a", "nobody", "-c", "/etc/shadowsocks-rust/config.json" ]

