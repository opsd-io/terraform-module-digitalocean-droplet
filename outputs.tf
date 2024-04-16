output "id" {
  description = "The ID of the droplet."
  value       = digitalocean_droplet.main.id
}

output "arn" {
  description = "The URN of the droplet."
  value       = digitalocean_droplet.main.urn
}

output "name" {
  description = "The name of the Droplet."
  value       = digitalocean_droplet.main.name
}

output "region" {
  description = "The region of the Droplet."
  value       = digitalocean_droplet.main.region
}

output "image" {
  description = "The image of the Droplet."
  value       = digitalocean_droplet.main.image
}

output "ipv4_address" {
  description = "The IPv4 address."
  value       = digitalocean_droplet.main.ipv4_address
}

output "status" {
  description = "The status of the Droplet."
  value       = digitalocean_droplet.main.status
}
