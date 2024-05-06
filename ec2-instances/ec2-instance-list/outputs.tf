# Output - For Loop with List
output "for_loop_with_list" {
  description = "value of public_ip"
  value       = [for instance in aws_instance.ec2-vm : instance.public_ip]
}

# Output - For Loop with Map
output "for_loop_with_map" {
  description = "value of public_ip"
  value       = { for k, v in aws_instance.ec2-vm : k => v.public_dns }
}
