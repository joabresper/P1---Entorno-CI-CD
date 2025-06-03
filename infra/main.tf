terraform {
  cloud {
    organization = "Entorno-CI-CD"
    workspaces {
      name = "infra-develop"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = var.region
}

resource "aws_instance" "app_server" {
  ami           = var.ami_id
  instance_type = var.instance_type

  user_data = <<-EOF
              #!/bin/bash
              mkdir -p /home/ubuntu/.ssh
              echo "${var.ssh-public-key}" >> /home/ubuntu/.ssh/authorized_keys
              chown -R ubuntu:ubuntu /home/ubuntu/.ssh
              chmod 600 /home/ubuntu/.ssh/authorized_keys
              EOF
  
  vpc_security_group_ids = ["sg-0664764c4b4d81bac"]

  tags = {
    Name = "EC2-instance-for-tests"
  }
}

output "ec2_public_ip" {
  value = aws_instance.app_server.public_ip
  description = "IP pública de la instancia EC2"
}
