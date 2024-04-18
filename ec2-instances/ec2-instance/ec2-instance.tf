# EC2 instance creation
resource "aws_instance" "ec2-vm" {
  ami           = "ami-051f8a213df8bc089"
  instance_type = "t2.micro"
  user_data     = file("${path.module}/simple-web-server.sh")
  tags = {
    Name = "Terraform Ec2 Instance"
  }
}
