#!/bin/sh

cd $(dirname $0)/../app

set -eux

kubectl apply -f service.yaml
