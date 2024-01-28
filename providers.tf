terraform {
  required_version = ">= 0.12.26"

  cloud {
    organization = "soat-tech-challenge"

    workspaces {
      name = "network-staging"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.67.0"
    }

    tfe = {
      source  = "hashicorp/tfe"
      version = "~> 0.49.2"
    }
  }
}

provider "aws" {
  region = var.aws_region

  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  token      = var.aws_session_token

  default_tags {
    tags = {
      Organization = "soat-tech-challenge"
      Workspace    = "network-staging"
    }
  }
}
