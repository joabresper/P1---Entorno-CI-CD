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
