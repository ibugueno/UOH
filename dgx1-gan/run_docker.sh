#!/bin/bash

docker rm -fv ignacio_gan

nvidia-docker run -it -e NVIDIA_VISIBLE_DEVICES=3 --name ignacio_gan -v /home/ignacio.bugueno/cachefs:/app/data ignacio_gan

sleep 10; docker logs ignacio_gan