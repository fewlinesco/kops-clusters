output "cluster_zone_name" {
  value = aws_route53_zone.cluster_zone.name
}

output "cluster_zone_id" {
  value = aws_route53_zone.cluster_zone.zone_id
}
