DATE=$(date '+%Y-%m-%d')
NAME=$DATE"-"$1".markdown"
echo "NAME IS $NAME"
echo "WRITING ..."
echo "---
layout: default
title: About
---" >> $NAME
nano $NAME
