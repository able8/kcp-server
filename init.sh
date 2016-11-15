#! /bin/bash
if [ "$PASSWD" == "" ]; then
  server_linux_386 -t $SERVER_ADDR:$SSSERVER_PORT -l ":$LOCAL_PORT" -mode $MODE
else
  server_linux_386 -t $SERVER_ADDR:$SSSERVER_PORT -l ":$LOCAL_PORT" -mode $MODE -key $PASSWD
fi
