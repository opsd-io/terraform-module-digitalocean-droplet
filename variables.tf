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
  default     = ""
}

variable "storage_size" {
  description = "The size of the block storage volume in GiB. If updated, can only be expanded."
  type        = number
  default     = null
}

variable "storage_attach" {
  description = "The ID of the VPC where the load balancer will be located."
  type        = bool
  default     = false
}

variable "storage_name" {
  description = "A name for the block storage volume. Must be lowercase and be composed only of numbers, letters up to a limit of 64 characters. The name must begin with a letter."
  type        = string
  default     = ""
}

# variable "droplet_id" {
#   description = "ID of the Droplet to attach the volume to."
#   type        = string
#   default     = ""
# }

# variable "volume_id" {
#   description = "ID of the Volume to be attached to the Droplet."
#   type        = string
#   default     = ""
# }
