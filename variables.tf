variable "image" {
  description = "The Droplet image ID or slug. This could be either image ID or droplet snapshot ID."
  type        = string
}

variable "name" {
  description = "The Droplet name."
  type        = string
}

variable "region" {
  description = "The region where the Droplet will be created."
  type        = string
}

variable "size" {
  description = "The unique slug that indentifies the type of Droplet."
  type        = string
}

variable "user_data" {
  description = "A string of the desired User Data for the Droplet."
  type        = string
  default     = null
}

variable "tags" {
  description = "A list of the tags to be applied to this Droplet."
  type        = list(string)
  default     = []
}

variable "backups" {
  description = "A list of the tags to be applied to this Droplet."
  type        = bool
  default     = false
}

variable "monitoring" {
  description = "A list of the tags to be applied to this Droplet."
  type        = bool
  default     = false
}

variable "ssh_keys" {
  description = "A list of the tags to be applied to this Droplet."
  type        = list(string)
  default     = []
}

variable "vpc_uuid" {
  description = "The ID of the VPC where the load balancer will be located."
  type        = string
  default     = null
}

variable "volumes" {
  description = "Volume for for_each"
  type        = set(string)
  default     = []
}
