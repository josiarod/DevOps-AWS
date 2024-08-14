# Get latest AMI ID for Amazon Linux 2 AMI
data "aws_ami" "amazon-linux-2" {
    owners      = ["amazon"]
    most_recent = true

    filter {
        name   = "name"
        values = ["amzn2-ami-hvm-*-gp2"]
    }
    filter {
        name   = "root-device-type"
        values = ["ebs"]
    }
    filter {
        name   = "virtualization-type"
        values = ["hvm"]
    }
    filter {
        name   = "architecture"
        values = ["x86_64"]
    }
}