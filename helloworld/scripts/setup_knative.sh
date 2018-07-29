#!/bin/sh

set -eux

# Install Knative Serving
kubectl apply -f https://github.com/knative/serving/releases/download/v0.1.0/release.yaml

# Install Knative Build
kubectl apply -f https://raw.githubusercontent.com/knative/serving/v0.1.0/third_party/config/build/release.yaml
