variable "tags" {
  type        = map(string)
  default     = {}
  description = "Tags"
}

variable "requestor_vpc_id" {
  type        = string
  default     = ""
}

variable "requestor_vpc_tags" {
  type        = map(string)
  default     = {}
}

variable "requestor_route_table_tags" {
  type        = map(string)
  default     = {}
}

variable "acceptor_vpc_id" {
  type        = string
  default     = ""
}

variable "acceptor_vpc_tags" {
  type        = map(string)
  default     = {}
}

variable "acceptor_route_table_tags" {
  type        = map(string)
  default     = {}
}

variable "auto_accept" {
  type        = bool
  default     = true
}

variable "acceptor_allow_remote_vpc_dns_resolution" {
  type        = bool
  default     = true
}

variable "requestor_allow_remote_vpc_dns_resolution" {
  type        = bool
  default     = true
}

variable "create_timeout" {
  type        = string
  default     = "3m"
}

variable "update_timeout" {
  type        = string
  default     = "3m"
}

variable "delete_timeout" {
  type        = string
  default     = "5m"
}
