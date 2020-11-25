#############################
# CLUSTERS DEFINITIONS
############################

module "example_cluster" {
  source = "./modules/cluster-environment"

  providers       = {
    aws = aws.eu_west_3
  }

  env_code      = "exp"
  number        = "01"
  provider_code = "aws"
  region_code   = "par"
  aws_region    = "eu-west-3"
}

#################################
# ENABLED ENVIRONMENTS FOR KOPS
#################################

locals {
  cluster_envs = {
    "example_cluster" = module.example_cluster,
  }
}

#################################
# PERSISTENCE PEERINGS
#################################

# module "example_peering" {
#   source          = "../terraform-modules/vpc-peering"

#   requestor_vpc_id =  module.example_cluster.vpc_id
#   acceptor_vpc_id = module.example_persistence_vpc.vpc_id
# }
