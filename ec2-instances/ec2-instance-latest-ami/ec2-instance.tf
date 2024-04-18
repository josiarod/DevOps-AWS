# EC2 instance creation
resource "aws_instance" "ec2-vm" {
  ami                    = data.aws_ami.latest-amazon-linux-2.id
  instance_type          = var.ec2_instance_type
  user_data              = file("${path.module}/simple-web-server.sh")
  key_name               = var.ec2_key_pair
  vpc_security_group_ids = [aws_security_group.web-traffic-sg.id, aws_security_group.ssh-traffic-sg.id]

  tags = {
    Name = "Terraform Ec2 Instance latest AMI"
  }
}
