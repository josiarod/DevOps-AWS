# Create elastic IP
resource "aws_eip" "bastion_eip" {
    depends_on = [ module.ec2_instance, module.vpc ]
    instance = module.ec2_instance.id
    tags = local.common_tags
}
