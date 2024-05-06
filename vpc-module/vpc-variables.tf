# VPC Input Variables

# VPC Name
variable "vpc_name" {
    description = "VPC Name"
    type        = string
    default     = "vpc-dev"
}

# VPC CIDR Block
variable "vpc_cidr_block" {
    description = "VPC CIDR Block"
    type        = string
    default     = "10.0.0.0/16"
}

# VPC Availability Zones
variable "vpc_availability_zones" {
    description = "VPC Availability Zones"
    type        = list(string)
    default     = ["us-east-1a", "us-east-1b"]
}

# VPC Public Subnets
variable "vpc_public_subnets" {
    description = "VPC Public Subnets"
    type        = list(string)
    default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

# VPC Private Subnets
variable "vpc_private_subnets" {
    description = "VPC Private Subnets"
    type        = list(string)
    default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

# VPC Database Subnets
variable "vpc_database_subnets" {
    description = "VPC Database Subnets"
    type        = list(string)
    default     = ["10.0.151.0/24", "10.0.152.0/24"]
}

# VPC Database Subnet Group
variable "vpc_create_database_subnet_group" {
    description = "VPC Database Subnet Group"
    type        = bool
    default     = true
}

# VPC Database Subnet Route Table
variable "vpc_create_database_subnet_route_table" {
    description = "VPC Database Subnet Route Table"
    type        = bool
    default     = true
}

# VPC Enable NAT Gateway
variable "vpc_enable_nat_gateway" {
    description = "Enable NAT Gateways for Private Subnets"
    type        = bool
    default     = true
}

# VPC Single NAT Gateway
variable "vpc_single_nat_gateway" {
    description = "Enable Single NAT Gateway"
    type        = bool
    default     = true
}

# VPC DNS Hostnames
variable "vpc_enable_dns_hostnames" {
    description = "Enable VPC DNS Hostnames"
    type        = bool
    default     = true
}

# VPC DNS Support
variable "vpc_enable_dns_support" {
    description = "Enable VPC DNS Support"
    type        = bool
    default     = true
}

# VPC Tags
variable "vpc_tags" {
    description = "VPC Tags"
    type        = map
    default     = {}
} 
