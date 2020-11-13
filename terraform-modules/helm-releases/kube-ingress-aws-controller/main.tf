resource "helm_release" "kube_ingress_aws_controller" {
  name       = "kube-ingress-aws-controller"
  namespace  = "kube-system"
  chart      = "${path.module}/helm"
}
