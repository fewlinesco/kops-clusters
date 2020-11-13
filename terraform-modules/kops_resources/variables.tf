variable "ingress_ips" {
  type        = list
  description = "List of Ingress IPs"
}

variable "name_prefix" {
  type        = string
  description = "Name prefix"
}

variable "vpc_id" {
  type        = string
  description = "the shared vpc id"
}
