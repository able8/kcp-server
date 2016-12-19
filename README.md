# kcp-server v 20161207

### Usage
```
docker run -t -d --cap-add=NET_ADMIN --network=host --restart=always --name=even_1 \
        -e LOCAL_PORT=4000 -e SERVER_ADDR=127.0.0.1 -e SERVER_PORT=8388 \
        -e MODE=manual -e PASSWD=test \
        -e OTHERS="--sndwnd 2048 --rcvwnd 4096 -crypt aes-128 -nodelay 0 -resend 0 -nc 1 -interval 40 -datashard 5 -parityshard 2" \
        dorrypizza/kcp-server 
```
```
docker run -t -d --cap-add=NET_ADMIN --network=host --restart=always --name=odd_1 \
        -e LOCAL_PORT=4001 -e SERVER_ADDR=127.0.0.1 -e SERVER_PORT=8388 \
        -e MODE=fast2 -e PASSWD=test \
        dorrypizza/kcp-server
```


Since kcp server and shadowsocks server are in the same physical machine, the `SERVER_ADDR` is the shadowsocks server address and the `SERVER_PORT` is the shadowsocks server port.
