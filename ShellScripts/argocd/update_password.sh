#!/bin/bash

# Argo CD server URL
ARGOCD_SERVER="argocd.master.com"

# Argo CD username and password or access token
ARGOCD_USERNAME="alam"
ARGOCD_PASSWORD="xyz12345"
ARGOCD_NEW_PASSWORD="alam12345"

# Log in to Argo CD using the provided credentials
argocd login "$ARGOCD_SERVER" --insecure --grpc-web --username "$ARGOCD_USERNAME" --password "$ARGOCD_PASSWORD"

argocd account update-password --account $ARGOCD_USERNAME --current-password "$ARGOCD_PASSWORD" --new-password "$ARGOCD_NEW_PASSWORD"

if [ $? -eq 0 ]; then
  echo "Password update successful."
else
  echo "Password update Failed."
fi
