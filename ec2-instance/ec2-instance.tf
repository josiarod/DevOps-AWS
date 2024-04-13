# Setting up the AWS provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.45.0"
    }
  }
}

# Provider Block
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Resource Block
resource "aws_instance" "myec2vm" {
  ami           = "ami-051f8a213df8bc089" # Amazon Linux
  instance_type = "t2.micro"
}
