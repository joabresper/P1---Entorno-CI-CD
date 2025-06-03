variable "region" {
  description = "La región donde desplegar los recursos"
  type        = string
}

variable "ami_id" {
  description = "ID de la AMI de la instancia"
  type        = string
}

variable "instance_type" {
  description = "Tipo de instancia EC2"
  type        = string
}

variable "ssh-puclib-key" {
	description = "Clave pública SSH para acceso a EC2"
	type		= string
}
