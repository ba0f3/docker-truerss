#!/bin/ash

java -Xmx150m -jar truerss*.jar &

tailf output.log
