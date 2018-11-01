#!/bin/bash
apt-get update && \
    apt-get install -y curl supervisor software-properties-common python-software-properties && \
    add-apt-repository ppa:max-c-lv/shadowsocks-libev && apt-get update && \
    apt-get install -y shadowsocks-libev && \
    apt-get install -y nodejs

/usr/bin/supervisord -c /etc/supervisor/supervisord.conf

