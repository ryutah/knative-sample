#!/bin/sh

set -eux

gcloud container clusters create $CLUSTER_NAME \
  --zone=$CLUSTER_ZONE \
  --cluster-version=latest \
  --machine-type=n1-standard-4 \
  --enable-autoscaling --min-nodes=1 --max-nodes=10 \
  --enable-autorepair \
  --scopes=service-control,service-management,compute-rw,storage-ro,cloud-platform,logging-write,monitoring-write,pubsub,datastore \
  --num-nodes=3
