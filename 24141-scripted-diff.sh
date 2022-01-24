#!/bin/bash -e

function s1() { git grep -l "$1" src/net* | xargs sed -i .old "s/$1/$2/g"; }

 s1 'mapSendBytesPerMsgCmd' 'mapSendBytesPerMsg'
 s1 'NET_MESSAGE_COMMAND_OTHER' 'NET_MESSAGE_OTHER'
 s1 'mapRecvBytesPerMsgCmd' 'mapRecvBytesPerMsg'
 s1 'mapMsgCmdSize' 'mapMsgSize'
 s1 'sendPerMsgCmd' 'sendPerMsg'
 s1 'mapSendBytesPerMsgCmd' 'mapSendBytesPerMsg'
 s1 'recvPerMsgCmd' 'recvPerMsg'

function s2() { git grep -l "$1" src/rpc/net* | xargs sed -i .old "s/$1/$2/g"; }

 s2 'mapSendBytesPerMsgCmd' 'mapSendBytesPerMsg'
 s2 'NET_MESSAGE_COMMAND_OTHER' 'NET_MESSAGE_OTHER'
 s2 'mapRecvBytesPerMsgCmd' 'mapRecvBytesPerMsg'
 s2 'mapMsgCmdSize' 'mapMsgSize'
 s2 'sendPerMsgCmd' 'sendPerMsg'
 s2 'mapSendBytesPerMsgCmd' 'mapSendBytesPerMsg'
 s2 'recvPerMsgCmd' 'recvPerMsg'

