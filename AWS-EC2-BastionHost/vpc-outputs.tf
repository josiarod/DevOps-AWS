# VPC Output Values

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

# VPC NAT Gateway Public IP
output "nat_public_ip" {
    description = "List of public Elastic IPs created for AWS NAT Gateway"
    value       = module.vpc.nat_public_ip
}

# VPC AZs
output "vpc_availability_zones" {
    description = "List of availability zones of the VPC"
    value       = module.vpc.azs
}