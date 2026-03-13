#!/bin/bash

MANIFEST_DIR=$1

if [ -z "$MANIFEST_DIR" ]; then
  echo "Usage: ./apply-manifests.sh <directory>"
  exit 1
fi

kubectl apply -f $MANIFEST_DIR
