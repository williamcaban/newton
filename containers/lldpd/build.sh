#!/bin/bash

export TAG=$(date +%y%m%d)

# build
podman build -t quay.io/wcaban/lldpd -f Containerfile
podman tag quay.io/wcaban/lldpd:latest quay.io/wcaban/lldpd:$TAG

# publish
podman push quay.io/wcaban/lldpd:latest
podman push quay.io/wcaban/lldpd:$TAG
