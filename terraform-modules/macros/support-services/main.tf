module "sealed_secrets" {
  source = "../cluster-services/sealed-secrets"
}

module "external_dns" {
  source = "../cluster-services/external-dns"

  dns_zone = var.cluster_name
}

module "cert_manager" {
  source = "../cluster-services/cert-manager"

  hosted_zone_id = var.cluster_zone_id
  parent_zone_name = var.main_zone
  region = var.region
}

module "kube_ingress_aws_controller" {
  source = "../cluster-services/kube-ingress-aws-controller"
  depends_on = [
    module.sealed_secrets,
    module.cert_manager
  ]
}

module "contour" {
  source = "../cluster-services/contour"
  depends_on = [
    module.sealed_secrets,
    module.cert_manager
  ]
}

module "argo_cd" {
  source = "../cluster-services/argo-cd"

  depends_on = [
    module.sealed_secrets,
    module.cert_manager,
    module.kube_ingress_aws_controller,
    module.contour
  ]
}
