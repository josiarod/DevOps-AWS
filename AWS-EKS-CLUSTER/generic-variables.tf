# Input Variables

# AWS Region
variable "aws_region" {
    description = "Region in which AWS resources to be created"
    type        = string
    default     = "us-east-1"
}

# Environment Variable
variable "environment" {
    description = "Environment Variable used as a prefix"
    type        = string
    default     = "dev"
}

# Business Unit
variable "business_unit" {
    description = "Business Unit"
    type        = string
    default     = "FINANCE"
}
