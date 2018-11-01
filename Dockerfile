FROM ubuntu:16.04

#ADD sources.list /etc/apt/sources.list
#RUN npm i -g shadowsocks-manager --unsafe-perm

ADD code /var/www/shadowsocks-manager
ADD config /etc/shadowsocks
ADD supervisor /etc/supervisor
ADD entry.sh .

ENTRYPOINT ["bash", "./entry.sh"]
