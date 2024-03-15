resource "digitalocean_droplet" "main" {
  image     = var.droplet_image
  name      = var.droplet_name
  region    = var.region
  size      = var.droplet_size
  user_data = var.user_data
  tags      = var.droplet_tags
}
