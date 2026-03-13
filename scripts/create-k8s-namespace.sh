#!/bin/bash

NAMESPACE=$1

if [ -z "$NAMESPACE" ]; then
  echo "Usage: ./create-k8s-namespace.sh <namespace>"
  exit 1
fi

kubectl create namespace $NAMESPACE
