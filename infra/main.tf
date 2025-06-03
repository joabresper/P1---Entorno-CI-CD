terraform {
  cloud {}

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.4.0"
    }
  }
  required_version = ">= 1.2.0"
}

resource "aws_instance" "app_server" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
