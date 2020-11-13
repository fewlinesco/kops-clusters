terraform {
  backend "remote" {
    organization = "fewlines"

    workspaces {
      name = "kops-clusters"
    }
  }
}
