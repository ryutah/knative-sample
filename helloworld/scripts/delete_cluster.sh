#!/bin/sh

set -eux

gcloud --quiet container clusters delete $CLUSTER_NAME --zone $CLUSTER_ZONE
