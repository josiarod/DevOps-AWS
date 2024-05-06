# VPC Outputs

# VPC ID
output "vpc_id" {
    description = "The ID of the VPC"
    value       = module.vpc.vpc_id
}

# VPC CIDR Block
output "vpc_cidr_block" {
    description = "The CIDR block of the VPC"
    value       = module.vpc.vpc_cidr_block
}

# VPC Private Subnets
output "vpc_private_subnets" {
    description = "List of IDs of private subnets"
    value       = module.vpc.private_subnets
}

# VPC Public Subnets
output "vpc_public_subnets" {
    description = "List of IDs of public subnets"
    value       = module.vpc.public_subnets
}

# VPC Database Subnets
output "vpc_database_subnets" {
    description = "List of IDs of database subnets"
    value       = module.vpc.database_subnets
}

# VPC gateway public IPs
output "vpc_public_ip" {
    description = "The public IP of the gateway"
    value       = module.vpc.vpc_public_ips
}

# VPC AZ
output "vpc_availability_zones" {
    description = "List of availability zones"
    value       = module.vpc.vpc_availability_zones
}