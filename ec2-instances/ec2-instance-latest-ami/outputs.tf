# Terraform Output Values
# AWS EC2 Instance Public IP

output "ec2_public_ip" {
  description = "Public IP of the EC2 Instance"
  value       = aws_instance.ec2-vm.public_ip
}

# Ec2 Instance Public DNS
output "ec2_public_dns" {
  description = "Public DNS of the EC2 Instance"
  value       = aws_instance.ec2-vm.public_dns
}
