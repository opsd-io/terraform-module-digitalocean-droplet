resource "digitalocean_droplet" "main" {
  image      = var.image
  name       = var.name
  region     = var.region
  size       = var.size
  user_data  = var.user_data
  tags       = var.tags
  backups    = var.backups
  monitoring = var.monitoring
  ssh_keys   = var.ssh_keys
  vpc_uuid   = var.vpc_uuid
}
# backups, monitoring, ssh_keys
