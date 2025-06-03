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

  tags = {
    Name = "EC2-instance-for-tests"
  }
}
