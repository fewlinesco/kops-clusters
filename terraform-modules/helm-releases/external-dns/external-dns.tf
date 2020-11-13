resource "kubernetes_namespace" "external_dns" {
  metadata {
    name = "external-dns"
  }
}

resource "helm_release" "external_dns" {
  name       = "external-dns"
  namespace  = kubernetes_namespace.external_dns.metadata[0].name
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "external-dns"
  version    = "3.0.1"

  values = [
    file("${path.module}/values/external-dns.yaml")
  ]

  set {
    name  = "domainFilters[0]"
    value = var.dns_zone
  }
}
