#!/bin/bash
REPO_NAME=aws-helm-repo
CHART_PATH=../manifests/hello-kubernetes-1.0.0.tgz

helm s3 push --relative --ignore-if-exists $CHART_PATH $REPO_NAME
helm repo update $REPO_NAME

printf "\nChart Pushed"
