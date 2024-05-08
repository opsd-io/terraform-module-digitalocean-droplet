variable "do_token" {
  description = "Token to digitalOcean API"
  type        = string
}

# variable "user_data" {
#   description = "A string of the desired User Data for the Droplet."
#   type        = string
#   default     = null
# }

variable "ssh_keys" {
  description = "A list of the ssh keys to be applied to this Droplet."
  type        = list(string)
  default     = []
}
