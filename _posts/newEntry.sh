DATE=$(date '+%Y-%m-%d')
NAME=$DATE"-"$1".markdown"
echo "NAME IS $NAME"
echo "WRITING ..."
echo "---
layout: post
title: About
---" >> $NAME
nano $NAME
