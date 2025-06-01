variable "region" {
  description = "Region donde se desplegara el recurso"
  default     = "us-east-2"
}

variable "ami_id" { 
	description = "ID de la AMI"
	default = "ami-06c8f2ec674c67112"
}

variable "instance_type" {
	description = "Tipo de la instancia"
	default = "t2.micro"
}