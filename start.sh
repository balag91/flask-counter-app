#!/bin/bash

DIRNAME="vol1"
mkdir -p /opt/disk/$DIRNAME 
chcon -Rt svirt_sandbox_file_t /opt/disk/$DIRNAME
chmod 777 /opt/disk/$DIRNAME

sudo kubectl create ns flask
sudo kubectl create -f ./ -n flask
