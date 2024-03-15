variable "droplet_image" {
  description = "(Required) The Droplet image ID or slug. This could be either image ID or droplet snapshot ID."
  type        = string
}

variable "droplet_name" {
  description = "(Required) The Droplet name."
  type        = string
}

variable "region" {
  description = "The region where the Droplet will be created."
  type        = string
}

variable "droplet_size" {
  description = "(Required) The unique slug that indentifies the type of Droplet."
  type        = string
}

variable "user_data" {
  description = "A string of the desired User Data for the Droplet."
  default     = null
  type        = string
}

variable "droplet_tags" {
  description = "A list of the tags to be applied to this Droplet."
  default     = []
  type        = list(string)
}
