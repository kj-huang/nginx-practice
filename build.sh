#!/bin/bash
docker build --no-cache -t webserver .

docker stop web

docker run -it --rm -d -p 30000:80 \
    --name web webserver