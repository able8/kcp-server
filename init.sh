#! /bin/bash
for VARIABLE in SERVER_ADDR SERVER_PORT LOCAL_PORT MODE PASSWD
do
  if [[ -z ${!VARIABLE} ]]; then
    echo Error: $VARIABLE is not defined, please check your docker-compose.yml
    exit
  fi
done
server_linux_amd64 -t $SERVER_ADDR:$SERVER_PORT -l ":$LOCAL_PORT" -mode $MODE -key $PASSWD
