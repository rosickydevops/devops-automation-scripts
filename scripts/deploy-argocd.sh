#!/bin/bash

echo "Creating ArgoCD namespace..."

kubectl create namespace argocd

echo "Installing ArgoCD..."

kubectl apply -n argocd \
-f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

echo "Waiting for pods..."

kubectl wait --for=condition=available \
deployment/argocd-server \
-n argocd \
--timeout=300s

echo "ArgoCD installed"
