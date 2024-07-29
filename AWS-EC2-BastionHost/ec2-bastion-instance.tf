module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 5.6.1"

  name = "${local.name}-Bastion-Host"
  ami = data.aws_ami.amazon-linux-2.id
  instance_type          =  var.ec2_instance_type
  key_name               = var.ec2_key_pair
  monitoring             = true
  subnet_id              = module.vpc.public_subnets[0]
  vpc_security_group_ids = [module.public_bastion_sg.security_group_id]

  tags = local.common_tags
}