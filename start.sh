#!/bin/bash
docker run --rm -d   --name=bodypix   --network=fakecam   --gpus=all --shm-size=1g --ulimit memlock=-1 --ulimit stack=67108864   bodypix
docker run  --rm -d --name=fakecam --network=fakecam  -u "$(id -u):$(getent group video | cut -d: -f3)" $(find /dev -name 'video*' -printf "--device %p " | head -n 1) fakecam
