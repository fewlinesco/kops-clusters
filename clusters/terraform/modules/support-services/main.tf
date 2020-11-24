provider "kubernetes" {
  config_path = "~/.kube/config"
  config_context = var.cluster_name
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

data "aws_route53_zone" "main_zone" {
  name  = "fewlines.net."
}

module "sealed_secrets" {
  source = "../../../../terraform-modules/helm-releases/sealed-secrets"
}

module "external_dns" {
  source = "../../../../terraform-modules/helm-releases/external-dns"

  dns_zone = var.cluster_name
}

module "cert_manager" {
  source = "../../../../terraform-modules/helm-releases/cert-manager"

  hosted_zone_id = var.cluster_zone_id
  parent_zone_name = var.main_zone
  region = var.region
}

module "kube_ingress_aws_controller" {
  source = "../../../../terraform-modules/helm-releases/kube-ingress-aws-controller"
  depends_on = [
    module.sealed_secrets,
    module.cert_manager
  ]
}

module "contour" {
  source = "../../../../terraform-modules/helm-releases/contour"
  depends_on = [
    module.sealed_secrets,
    module.cert_manager
  ]
}

module "argo_cd" {
  source = "../../../../terraform-modules/helm-releases/argo-cd"

  depends_on = [
    module.sealed_secrets,
    module.cert_manager,
    module.kube_ingress_aws_controller,
    module.contour
  ]
}
