locals {
  cluster_zone  = "${var.env_code}-${var.number}.${var.provider_code}-${var.region_code}.${var.main_zone}"
  cluster_name  = local.cluster_zone
  vpc_name      = local.cluster_zone
}

module "dns_zone" {
  source          = "../../../terraform-modules/route_53_zone"

  main_zone       = var.main_zone
  cluster_zone    = local.cluster_zone
}

module "vpc" {
  source          = "../../../terraform-modules/vpc"

  name_prefix     = local.vpc_name
  cluster_name    = local.cluster_name
  cidr            = "10.0.0.0/16"
  azs             = ["${var.aws_region}a", "${var.aws_region}b", "${var.aws_region}c"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
  ingress_ips     = ["10.0.0.100/32", "10.0.0.101/32", "10.0.0.103/32"]
}

module "kops" {

  source      = "../../../terraform-modules/kops_resources"
  name_prefix = local.vpc_name
  ingress_ips = ["10.0.0.100/32", "10.0.0.101/32", "10.0.0.103/32"]
  vpc_id      = module.vpc.vpc_id
}
