
resource "kubernetes_namespace" "argo_cd" {
  metadata {
    name = "argo-cd"
  }
}

resource "helm_release" "argocd" {
  name       = "argo-cd"
  namespace  = kubernetes_namespace.argo_cd.metadata[0].name
  repository = "https://argoproj.github.io/argo-helm"
  chart      = "argo-cd"
  version    = "2.8.0"
}

resource "helm_release" "argocd_notifications" {
  name       = "argocd-notifications"
  namespace  = kubernetes_namespace.argo_cd.metadata[0].name
  repository = "https://argoproj.github.io/argo-helm"
  chart      = "argocd-notifications"
  version    = "1.0.11"

  values = [
    file("${path.module}/values/argocd-notifications.yaml")
  ]
}

# resource "kubernetes_manifest" "argocd_application" {
#   provider = kubernetes-alpha

#   manifest = {
#     "apiVersion" = "argoproj.io/v1alpha1"
#     "kind" = "Application"
#     "metadata" = {
#       "name" = "cluster-services"
#       "namespace" = kubernetes_namespace.argo_cd.metadata[0].name
#     }
#     "spec" = {
#       "destination" = {
#         "server" =  "https://kubernetes.default.svc"
#         "namespace" = kubernetes_namespace.argo_cd.metadata[0].name
#       }
#       "project" = "default"
#       "source" = {
#         "directory" = {
#           "recurse" = true
#         }
#         "repoURL" = "https://github.com/l0ck3/experimental-clusters-config.git"
#         "targetRevision" = "HEAD"
#         "path" = "services"
#       }
#       "syncPolicy" = {
#         "automated" = {
#           "prune" = true
#           "selfHeal" = true
#         }
#       }
#     }
#   }
# }
