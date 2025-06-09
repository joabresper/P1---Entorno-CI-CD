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

variable "environment" {
  description = "Entorno para el que se crea la instancia (production/develpo)"
  type        = string
}

variable "dev_id" {
  description = "ID del pipeline que crea la instancia"
  type        = string
}

variable "ssh-public-key" {
	description = "Clave pública SSH para acceso a EC2"
	type		= string
}
