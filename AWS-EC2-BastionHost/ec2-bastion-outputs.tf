# ec2_bastion_public_instance_ids
output "ec2_bastion_public_ip_ids" {
    description = "List of EC2 Instance IDs"
    value       = module.ec2_public.id
}


# ec2_bastion_public_ip
output "ec2_bastion_eip" {
    description = "Elastic IP for Bastion Host"
    value       = aws_eip.bastion_eip.public_ip
}