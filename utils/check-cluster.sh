#!/bin/bash

source ../utils/log.sh

log_info "Checking Kubernetes cluster connection..."

kubectl cluster-info > /dev/null 2>&1

if [ $? -ne 0 ]; then
  log_error "Cluster is not reachable"
  exit 1
fi

log_info "Cluster is reachable"
