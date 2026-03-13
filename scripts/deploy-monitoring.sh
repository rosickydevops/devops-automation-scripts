#!/bin/bash

echo "Adding Helm repo..."

helm repo add prometheus-community \
https://prometheus-community.github.io/helm-charts

helm repo update

echo "Installing Prometheus stack..."

helm install monitoring \
prometheus-community/kube-prometheus-stack \
--namespace monitoring \
--create-namespace
