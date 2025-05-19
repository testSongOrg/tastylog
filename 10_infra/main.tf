# ---------------------------------------------
# Terraform configuration
# ---------------------------------------------
terraform {
  required_version = ">=0.13"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  backend "s3" {
    bucket  = "jwsong-tast-cicd-test"
    key     = "tastylog-dev.tfstste"
    region  = "ap-northeast-1"
    profile = "jwsong"
  }
}

# ---------------------------------------------
# Provider
# ---------------------------------------------
provider "aws" {
  profile = "jwsong"
  region  = "ap-northeast-1"
}

provider "aws" {
  alias   = "virginia"
  profile = "jwsong"
  region  = "us-east-1"
}
