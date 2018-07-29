#!/bin/sh

set -eux

kubectl apply -f https://raw.githubusercontent.com/knative/serving/v0.1.0/third_party/istio-0.8.0/istio.yaml
kubectl label namespace default istio-injection=enabled
