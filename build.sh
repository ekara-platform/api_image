#!/bin/sh

#Copy

docker run --rm -v "$PWD/go":/go/src/installer -w /go/src/installer iron/go:dev go build -o api

docker build -t lagoon-platform/api .     
