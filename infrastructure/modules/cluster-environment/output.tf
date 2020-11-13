output "region" {
  value = var.aws_region
}

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "vpc_cidr_block" {
  value = module.vpc.vpc_cidr_block
}

output "public_subnet_ids" {
  value = module.vpc.public_subnet_ids
}

output "public_route_table_ids" {
  value = module.vpc.public_route_table_ids
}

output "private_subnet_ids" {
  value = module.vpc.private_subnet_ids
}

output "private_route_table_ids" {
  value = module.vpc.private_route_table_ids
}

output "default_security_group_id" {
  value = module.vpc.default_security_group_id
}

output "nat_gateway_ids" {
  value = module.vpc.nat_gateway_ids
}

output "availability_zones" {
  value = ["${var.aws_region}a", "${var.aws_region}b", "${var.aws_region}c"]
}

output "main_zone" {
  value = var.main_zone
}

output "cluster_name" {
  value = local.cluster_name
}

output "cluster_zone_id" {
  value = module.dns_zone.cluster_zone_id
}

output "k8s_api_http_security_group_id" {
  value = module.kops.k8s_api_http_security_group_id
}
