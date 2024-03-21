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

resource "digitalocean_volume" "main" {
  count = var.storage_size > 0 ? 1 : 0

  region = var.region
  name   = var.storage_name
  size   = var.storage_size
}

resource "digitalocean_volume_attachment" "main" {
  count = var.storage_size > 0 && var.storage_attach == true ? 1 : 0

  droplet_id = digitalocean_droplet.main.id
  volume_id  = digitalocean_volume.main[count.index]
}
