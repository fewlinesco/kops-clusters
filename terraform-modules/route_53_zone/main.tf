data "aws_route53_zone" "main_zone" {
  name  = var.main_zone
}

resource "aws_route53_zone" "cluster_zone" {
  name = var.cluster_zone
}

resource "aws_route53_record" "cluster_zone_ns" {
  zone_id = data.aws_route53_zone.main_zone.zone_id
  name    = aws_route53_zone.cluster_zone.name
  type    = "NS"
  ttl     = "300"
  records = aws_route53_zone.cluster_zone.name_servers
}
