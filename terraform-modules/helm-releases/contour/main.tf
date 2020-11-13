
resource "kubernetes_namespace" "contour" {
  metadata {
    name = "contour"
  }
}

resource "helm_release" "contour" {
  name       = "contour"
  namespace  = kubernetes_namespace.contour.metadata[0].name
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "contour"
  version    = "2.3.2"

  values = [
    file("${path.module}/values/contour.yaml")
  ]
}
