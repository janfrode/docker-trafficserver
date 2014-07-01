docker-trafficserver
====================

Apache Trafficserver in Docker

Build:
======
docker build -t="janfrode/trafficserver" .

Run:
====
docker run -v /dev/log:/dev/log --rm=true janfrode/trafficserver
