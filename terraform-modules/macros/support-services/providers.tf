provider "aws" {
  region  = var.region
  version = "~> 2.57"
}

provider "kubernetes" {
  config_path = "~/.kube/config"
  config_context = "experimental.fewlines.net"
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}
