# Create a Null Resource and Provisioners
resource "null_resource" "copy_ec2_keys" {
    depends_on = [ module.ec2_instance ]

    # Connection Block for Provisioners to connect to EC2 Instance
    connection {
        type = "ssh"
        host = aws_eip.bastion_eip.public_ip
        user = "ec2-user"
        password = ""
        private_key = file("private-key/eks-terraform-key.pem")
    }

    # File Provisioner: Copies the terraform-key.pem file to /tmp/terraform-key.pem
    provisioner "file" {
        source = "/private-key/eks-terraform-key.pem"
        destination = "/tmp/eks-terraform-key.pem"
    }

    # Remote Exec Provisioner: Using remote-exec provisioner to install httpd in ec2
    provisioner "remote-exec" {
        inline = [
            "sudo chmod 400 /tmp/eks-terraform-key.pem"
        ]
    }

    # Local Exec Provisioner:  local-exec provisioner (Creation-Time Provisioner - Triggered during Create Resource)
    provisioner "local-exec" {
        command = "echo VPC created on `date` and VPC ID is ${module.vpc.vpc_id} >> bastion-host.txt"
        working_dir = "local-exec-output-files"
    }
}