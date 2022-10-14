#!/bin/bash

export TAG=$(date +%y%m%d)

# build
podman build -t quay.io/wcaban/stress-ng -f Containerfile
podman tag quay.io/wcaban/stress-ng:latest quay.io/wcaban/stress-ng:$TAG

# publish
podman push quay.io/wcaban/stress-ng:latest
podman push quay.io/wcaban/stress-ng:$TAG