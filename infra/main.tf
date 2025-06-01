terraform {
  backend "remote" {
    organization = "Entorno-CI-CD"

    workspaces {
      name = "P1---Entorno-CI-CD"
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
    Name = "ExampleAppServerInstance"
  }
}
