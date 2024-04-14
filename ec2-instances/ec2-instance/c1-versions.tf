# Terraform Block
terraform {
  required_version = "~> 1.8.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.45.0"
    }
  }
}

# Provider Block
provider "aws" {
  region = "us-east-1"
}
