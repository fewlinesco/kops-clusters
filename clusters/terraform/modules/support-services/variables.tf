variable "region" {
  type        = string
  description = "AWS Region"
}

variable "cluster_name" {
  type        = string
  description = "Cluster FQDN"
}

variable "main_zone" {
  type        = string
  description = "Parent DNS Zone"
}

variable "cluster_zone_id" {
  type        = string
  description = "Cluster Zone ID"
}
