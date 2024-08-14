# AWS EC2 Instance Variables

# AWS EC2 Instance type
variable "ec2_instance_type" {
    description = "EC2 Instance Type"
    type        = string
    default     = "t2.micro"
}

# AWS EC2 Instance Key Pair
variable "ec2_key_pair" {
    description = "EC2 Key Pair"
    type        = string
    default     = "eks-terraform-key"
}
