#############################
# CLUSTERS DEFINITIONS
############################

module "test_cluster" {
  source = "./modules/cluster-environment"

  providers       = {
    aws = aws.eu_west_1
  }

  env_code      = "tst"
  number        = "01"
  provider_code = "aws"
  region_code   = "irl"
  aws_region    = "eu-west-1"
}

#################################
# ENABLED ENVIRONMENTS FOR KOPS
#################################

locals {
  cluster_envs = {
    "test" = module.test_cluster,
  }
}
