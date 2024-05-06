# EC2 instance creation
resource "aws_instance" "ec2-vm" {
  ami = data.aws_ami.latest-amazon-linux-2.id
  #instance_type         = var.ec2_instance_type
  instance_type = element(var.ec2_instance_type_list, 0) # For list
  #instance_type          = var.ec2_instance_type_map["dev"] # For map
  user_data              = file("${path.module}/simple-web-server.sh")
  key_name               = var.ec2_key_pair
  vpc_security_group_ids = [aws_security_group.web-traffic-sg.id, aws_security_group.ssh-traffic-sg.id]
  count                  = 2

  tags = {
    Name = "Count-${count.index + 1}"
  }
}
