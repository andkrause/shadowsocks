# Shadowsocks

This is a simple dockerfile building on top of the [shadowsocks-rust server](https://github.com/shadowsocks/shadowsocks-rust) that uses iptables to block any outbound traffic to the local network. 

The remainder of the configuration remains the same as in the [official image](https://github.com/shadowsocks/shadowsocks-rust?tab=readme-ov-file#run-the-container).