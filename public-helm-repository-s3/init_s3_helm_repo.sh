#!/bin/bash
BUCKET_NAME=$( cat output | awk '{print $3}' | sed 's/"//g' )
REPO_NAME=aws-helm-repo

printf "Initializing Helm3 repo: $REPO_NAME \n"
printf "Bucket Name: $BUCKET_NAME \n\n"

helm s3 init --ignore-if-exists s3://$BUCKET_NAME
helm repo add $REPO_NAME s3://$BUCKET_NAME

printf "\n Verify If repo created is publicly accessible."
