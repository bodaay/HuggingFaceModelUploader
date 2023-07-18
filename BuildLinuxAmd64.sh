#!/bin/bash

output_dir="output"
read -r version < VERSION

echo "Building for Linux/amd64..."
GOOS=linux GOARCH=amd64 go build -o "$output_dir/hfuploader_linux_amd64_$version" main.go
echo "Build completed. Binary output: $output_dir/hfuploader_linux_amd64_$version"
