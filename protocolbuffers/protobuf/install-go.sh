#!/bin/bash

if ! command -v go > /dev/null 2>&1; then
	echo "ERROR: go not found"
	exit 1
fi

go install google.golang.org/protobuf/cmd/protoc-gen-go@latest
go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest
