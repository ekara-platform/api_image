#!/bin/sh

#Copy

docker run --rm -v "$PWD/go":/go/src/api -w /go/src/api iron/go:dev go build -o api

docker build -t ekaraplatform/api .     
