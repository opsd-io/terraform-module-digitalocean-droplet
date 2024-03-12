# The following attributes are exported:

#     id - The ID of the Droplet
#     urn - The uniform resource name of the Droplet
#     name- The name of the Droplet
#     region - The region of the Droplet
#     image - The image of the Droplet
#     ipv6 - Is IPv6 enabled
#     ipv6_address - The IPv6 address
#     ipv4_address - The IPv4 address
#     ipv4_address_private - The private networking IPv4 address
#     locked - Is the Droplet locked
#     private_networking - Is private networking enabled
#     price_hourly - Droplet hourly price
#     price_monthly - Droplet monthly price
#     size - The instance size
#     disk - The size of the instance's disk in GB
#     vcpus - The number of the instance's virtual CPUs
#     status - The status of the Droplet
#     tags - The tags associated with the Droplet
#     volume_ids - A list of the attached block storage volumes
output "droplet_id" {
  description = "The ID of the droplet."
  value       = digitalocean_droplet.main.id
}

output "droplet_arn" {
  description = "The URN of the droplet."
  value       = digitalocean_droplet.main.urn
}

output "droplet_name" {
  description = "The name of the Droplet."
  value       = digitalocean_droplet.main.name
}

output "droplet_region" {
  description = "The region of the Droplet."
  value       = digitalocean_droplet.main.region
}

output "droplet_image" {
  description = "The image of the Droplet."
  value       = digitalocean_droplet.main.image
}

output "droplet_ipv4_address" {
  description = "The IPv4 address."
  value       = digitalocean_droplet.main.ipv4_address
}

output "droplet_status" {
  description = "The status of the Droplet."
  value       = digitalocean_droplet.main.status
}