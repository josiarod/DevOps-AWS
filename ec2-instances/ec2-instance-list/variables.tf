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

# AWS EC2 Instance Type List
variable "ec2_instance_type_list" {
  description = "EC2 Instance Type List"
  type        = list(string)
  default     = ["t2.micro", "t3.micro"]
}

# AWS EC2 Instance Type Map
variable "ec2_instance_type_map" {
  description = "EC2 Instance Type Map"
  type        = map(string)
  default = {
    "dev"  = "t2.micro"
    "qa"   = "t3.micro"
    "prod" = "t3.large"
  }
}
