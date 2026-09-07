terraform {
  required_version = ">= 1.3.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region

  # Optional IAM Role Assumption for team-specific target AWS accounts
  dynamic "assume_role" {
    for_each = var.target_role_arn != "" ? [var.target_role_arn] : []
    content {
      role_arn     = assume_role.value
      session_name = "DNSDeploymentSession"
    }
  }
}
