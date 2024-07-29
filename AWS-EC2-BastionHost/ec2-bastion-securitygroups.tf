# Security Groups

module "public_bastion_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "5.1.2"

  name        = "${local.name}-public-bastion-sg"
  description = "Security Group with SSH port open for everybody (IPv4 CIDR), egress ports are all open"
  vpc_id = module.vpc.vpc_id

  # Ingress Rules & CIDR Blocks
  ingress_rules       = ["ssh-tcp"]
  ingress_cidr_blocks = ["0.0.0.0/0"]

  # Egress Rule - all-all open
  egress_rules = ["all-all"]
  tags = local.common_tags
}