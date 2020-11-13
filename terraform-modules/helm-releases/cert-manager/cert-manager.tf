resource "kubernetes_namespace" "cert_manager" {
  metadata {
    name = "cert-manager"
  }
}

resource "helm_release" "cert_manager" {
  name       = "cert-manager"
  namespace  = kubernetes_namespace.cert_manager.metadata[0].name
  repository = "https://charts.jetstack.io"
  chart      = "cert-manager"
  version    = "v1.0.2"

  values = [
    file("${path.module}/values/cert-manager.yaml")
  ]
}

resource "helm_release" "cert_manager_extra_manifests" {
  name       = "cert-manager-extras"
  namespace  = kubernetes_namespace.cert_manager.metadata[0].name
  chart      = "${path.module}/charts/extra-manifests"

  set {
    name = "region"
    value = var.region
  }

  set {
    name = "hostedZoneID"
    value = var.hosted_zone_id
  }

  set {
    name = "rootDnsZone"
    value = var.parent_zone_name
  }

  depends_on = [
    helm_release.cert_manager
  ]
}
