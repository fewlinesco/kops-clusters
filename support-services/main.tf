provider "aws" {
  region  = "eu-west-1"
  version = "~> 2.57"
}

provider "kubernetes" {
  config_path = "~/.kube/config"
  config_context = "experimental.fewlines.net"
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

data "aws_route53_zone" "fewlines_net" {
  name  = "fewlines.net."
}

module "sealed_secrets" {
  source = "../terraform-modules/cluster-services/sealed-secrets"
}

module "external_dns" {
  source = "../terraform-modules/cluster-services/external-dns"

  dns_zone = var.cluster_name
}

module "cert_manager" {
  source = "../terraform-modules/cluster-services/cert-manager"

  hosted_zone_id = var.cluster_zone_id
  parent_zone_name = var.main_zone
  region = var.region
}

module "kube_ingress_aws_controller" {
  source = "../terraform-modules/cluster-services/kube-ingress-aws-controller"
  depends_on = [
    module.sealed_secrets,
    module.cert_manager
  ]
}

module "contour" {
  source = "../terraform-modules/cluster-services/contour"
  depends_on = [
    module.sealed_secrets,
    module.cert_manager
  ]
}

module "argo_cd" {
  source = "../terraform-modules/cluster-services/argo-cd"

  depends_on = [
    module.sealed_secrets,
    module.cert_manager,
    module.kube_ingress_aws_controller,
    module.contour
  ]
}
