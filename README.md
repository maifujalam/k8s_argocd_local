# K8s Argocd Local
Create local kubernetes setup using vagrant and manage all apps with argocd.
- Sample argocd manifests: https://github.com/argoproj/argo-cd/blob/master/docs/operator-manual/argocd-repositories.yaml
- helm -n argocd upgrade argocd manifests/argo-cd -f manifests/argo-cd/values.yaml
