# The following attributes are exported:
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
