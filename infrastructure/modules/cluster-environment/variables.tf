variable "main_zone" {
  type        = string
  description = "Main DNS zone"
  default     = "fewlines.net"
}

variable "env_code" {
  type        = string
  description = "Fewlines environment code"
}

variable "number" {
  type        = string
  description = "Cluster number"
}

variable "provider_code" {
  type        = string
  description = "Fewlines provider code"
}

variable "region_code" {
  type        = string
  description = "Fewlines region code"
}

variable "aws_region" {
  type        = string
  description = "AWS region code"
}
