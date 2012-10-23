#!/bin/sh

# A script to build WebSocketMain.swf and WebSocketMainInsecure.zip.

# You need Flex 4 SDK:
# http://opensource.adobe.com/wiki/display/flexsdk/Download+Flex+4

PATH=$PATH:~/Dev/IHR/flowplayer/flex/bin

mxmlc \
  -static-link-runtime-shared-libraries \
  -target-player=10.0.0 \
  -output=../WebSocketMain.swf \
  -source-path=src -source-path=third-party \
  src/net/gimite/websocket/WebSocketMain.as &&

mxmlc \
  -static-link-runtime-shared-libraries \
  -target-player=10.0.0 \
  -output=../WebSocketMainInsecure.swf \
  -source-path=src -source-path=third-party \
  src/net/gimite/websocket/WebSocketMainInsecure.as