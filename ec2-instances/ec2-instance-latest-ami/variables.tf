# Input Variables
# AWS Region
variable "aws_region" {
  description = "Region in which AWS resources to be created"
  type        = string
  default     = "us-east-1"
}

# AWS EC2 Instance Type
variable "ec2_instance_type" {
  description = "EC2 Instance Type"
  type        = string
  default     = "t2.micro"
}

# AWS EC2 Instance Key Pair
variable "ec2_key_pair" {
  description = "EC2 Key Pair"
  type        = string
  default     = "terraform-key"
}
