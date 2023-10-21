#!/bin/bash
# ARGOCD_SERVER=argocd.master.com
ARGOCD_SERVER="localhost:8080"
USERNAME=admin
PASSWORD=$(kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d)
# echo $PASSWORD

argocd login $ARGOCD_SERVER  --insecure  --username $USERNAME --password $PASSWORD  # --grpc-web  --skip-test-tls

NEW_USER=alam
NEW_PASSWORD=alam12345
argocd account update-password --account $NEW_USER --current-password $PASSWORD --new-password  $NEW_PASSWORD --port-forward --port-forward-namespace argocd

