#!/bin/bash

docker rm -fv ignacio_gan_pt

nvidia-docker run -it -e NVIDIA_VISIBLE_DEVICES=0 --name ignacio_gan_pt -v /home/ignacio.bugueno/cachefs:/app/data ignacio_gan_pt

sleep 10; docker logs ignacio_gan_pt
