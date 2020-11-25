# provider "random" {

# }

# locals {
#   env_code      = "exp"
#   provider_code = "aws"
#   region_code   = "par"
#   main_zone     = "fewlines.net"
#   aws_region    = "eu-west-3"
#   vpc_name      = "${local.env_code}.${local.provider_code}-${local.region_code}.${local.main_zone}"
# }

# ######
# # VPC
# ######
# module "example_persistence_vpc" {
#   source = "terraform-aws-modules/vpc/aws"

#   name = "${local.vpc_name}-persistence-vpc"
#   cidr            = "172.16.0.0/16"

#   azs             = ["${local.aws_region}a", "${local.aws_region}b", "${local.aws_region}c"]
#   private_subnets = ["172.16.1.0/24", "172.16.2.0/24", "172.16.3.0/24"]
#   public_subnets  = ["172.16.101.0/24", "172.16.102.0/24", "172.16.103.0/24"]

#   enable_nat_gateway     = true
#   single_nat_gateway     = true
#   one_nat_gateway_per_az = false

#   enable_dns_hostnames = true
#   enable_dns_support   = true
# }

# #################
# # SECURITY GROUPS
# #################
# module "rds_security_group" {
#   source = "terraform-aws-modules/security-group/aws"

#   name        = "experimental-connect-rds"
#   vpc_id      = module.example_persistence_vpc.vpc_id

#   ingress_with_cidr_blocks = [
#     {
#       rule        = "postgresql-tcp"
#       cidr_blocks = module.example_cluster.vpc_cidr_block
#     },
#   ]
# }

# module "amazonmq_security_group" {
#   source = "terraform-aws-modules/security-group/aws"

#   name        = "experimental-connect-amazonmq"
#   vpc_id      = module.example_persistence_vpc.vpc_id

#   ingress_with_cidr_blocks = [
#     {
#       rule        = "http-443"
#       cidr_blocks = module.example_cluster.vpc_cidr_block
#     },
#     {
#       rule        = "rabbitmq-5672-tcp"
#       cidr_blocks = module.example_cluster.vpc_cidr_block
#     },
#   ]
# }

# ####################################
# # Variables common to both instnaces
# ####################################
# locals {
#   engine                = "postgres"
#   engine_version        = "11.8"
#   instance_class        = "db.t3.medium" # TODO: Use m5.large in prod
#   allocated_storage     = 100
#   max_allocated_storage = 500
#   port                  = "5432"
#   multi_az              = true # TODO: Use false in non-prod
#   deletion_protection   = false # TODO: Set to TRUE for prod
# }

# ##############################################################
# # Data sources to get VPC, subnets and security group details
# ##############################################################
# data "aws_vpc" "default" {
#   default = true
# }

# data "aws_subnet_ids" "all" {
#   vpc_id = module.example_persistence_vpc.vpc_id
# }

# ###########
# # Master DB
# ###########
# resource "random_password" "rds_password" {
#   length = 16
#   special = true
#   override_special = "_%@"
# }

# module "master" {
#   source  = "terraform-aws-modules/rds/aws"
#   version = "~> 2.0"

#   deletion_protection = local.deletion_protection

#   identifier = "experimental-connect-rds"

#   engine                = local.engine
#   engine_version        = local.engine_version
#   instance_class        = local.instance_class
#   allocated_storage     = local.allocated_storage
#   max_allocated_storage = local.max_allocated_storage

#   name     = "experimental_connect_rds"
#   username = "fewlines_connect"
#   password = random_password.rds_password.result
#   port     = local.port

#   vpc_security_group_ids = [module.rds_security_group.this_security_group_id]

#   backup_retention_period = 35

#   subnet_ids = data.aws_subnet_ids.all.ids

#   create_db_option_group    = false
#   create_db_parameter_group = false

#   multi_az = local.multi_az

#   performance_insights_enabled = true
#   monitoring_interval = 60

#   # TODO: Try to adjust it depending on the region
#   maintenance_window = "Mon:00:00-Mon:03:00"
#   backup_window      = "03:00-06:00"
# }
