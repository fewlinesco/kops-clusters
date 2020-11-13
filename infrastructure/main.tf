#############################
# BACKEND
############################

terraform {
  backend "remote" {
    organization = "fewlines"

    workspaces {
      name = "kops-environments"
    }
  }
}

#############################
# KOPS STATE
############################

resource "aws_s3_bucket" "kops_state" {
  bucket = "fewlines-clusters-kops-s3"
  acl    = "private"

  versioning {
    enabled = true
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm     = "AES256"
      }
    }
  }

  tags = {
    Environment = "fewlines-clusters"
    Application = "kops"
    Description = "S3 Bucket for KOPS state"
  }
}
