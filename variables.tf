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
  description = "Volume name and size for for_each, each.key is used as name, each.value is used as size"
  type        = map(number)
  default     = {}
}

variable "firewall_enable" {
  description = "Flag to control the droplet firewall creation."
  type        = bool
  default     = false
}

variable "firewall_inbound_rule" {
  description = "List of objects that represent the configuration of each inbound rule."
  type = list(object({
    protocol           = string
    port_range         = string
    source_addresses   = optional(list(string))
    droplet_ids        = optional(list(string))
    load_balancer_uids = optional(list(string))
    kubernetes_ids     = optional(list(string))
    tags               = optional(list(string))
  }))
  default = [
    {
      protocol   = "tcp"
      port_range = "1-65535"
      source_addresses = [
        "0.0.0.0/0",
      "::/0"]
    },
    {
      protocol   = "udp"
      port_range = "1-65535"
      source_addresses = [
        "0.0.0.0/0",
      "::/0"]
    }
  ]
}

variable "firewall_outbound_rule" {
  description = "List of objects that represent the configuration of each outbound rule."
  type = list(object({
    protocol              = string
    port_range            = string
    destination_addresses = optional(list(string))
    droplet_ids           = optional(list(string))
    load_balancer_uids    = optional(list(string))
    kubernetes_ids        = optional(list(string))
    tags                  = optional(list(string))
  }))
  default = [
    {
      protocol   = "tcp"
      port_range = "1-65535"
      destination_addresses = [
        "0.0.0.0/0",
      "::/0"]
    },
    {
      protocol   = "udp"
      port_range = "1-65535"
      destination_addresses = [
        "0.0.0.0/0",
      "::/0"]
    }
  ]
}
