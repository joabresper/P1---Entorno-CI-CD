terraform {
  cloud {
    organization = "Entorno-CI-CD"
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = var.region
}

resource "aws_instance" "dev_test_server" {
  ami           = var.ami_id
  instance_type = var.instance_type
  count         = var.environment == "develop" ? 1 : 0

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

resource "aws_instance" "infra_test_server" {
  ami           = var.ami_id
  instance_type = var.instance_type
  count         = var.environment == "infra" ? 1 : 0

  user_data = <<-EOF
              #!/bin/bash
              mkdir -p /home/ubuntu/.ssh
              echo "${var.ssh-public-key}" >> /home/ubuntu/.ssh/authorized_keys
              chown -R ubuntu:ubuntu /home/ubuntu/.ssh
              chmod 600 /home/ubuntu/.ssh/authorized_keys
              EOF
  
  vpc_security_group_ids = ["sg-0664764c4b4d81bac"]

  tags = {
    Name = "EC2-infra-test"
  }
}

resource "aws_instance" "production_server" {
  ami           = var.ami_id
  instance_type = var.instance_type
  count         = var.environment == "production" ? 1 : 0

  user_data = <<-EOF
              #!/bin/bash
              mkdir -p /home/ubuntu/.ssh
              echo "${var.ssh-public-key}" >> /home/ubuntu/.ssh/authorized_keys
              chown -R ubuntu:ubuntu /home/ubuntu/.ssh
              chmod 600 /home/ubuntu/.ssh/authorized_keys
              EOF
  
  vpc_security_group_ids = ["sg-0664764c4b4d81bac"]

  tags = {
    Name = "production-instance"
  }
}

output "ec2_public_ip" {
  description = "IP pública de la instancia EC2"
  value = aws_instance.production_server[0].public_ip || aws_instance.dev_test_server[0].public_ip || aws_instance.infra_test_server[0].public_ip
}
