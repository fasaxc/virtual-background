# virtual-background

Provides virtual background support for linux clients. 

*requires an nvidia graphics card to run*

For use on Zoom or any other video conferencing app


Based on Ben Elder's post https://elder.dev/posts/open-source-virtual-background/

## install
Clone this repo.

`cd virtual-background`

`docker build -t bodypix ./bodypix`

`docker build -t fakecam ./fakecam`

`docker network create --driver bridge fakecam`

Install video4linux loopback driver.

`./start.sh`

...

`./stop.sh`
