terraform {
  required_version = ">= 1.9.5"

  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = ">= 2.40.1"
    }
  }
}

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
  for_each = var.volumes

  region = var.region
  name   = each.key
  size   = each.value

}

resource "digitalocean_volume_attachment" "main" {
  for_each = digitalocean_volume.main

  droplet_id = digitalocean_droplet.main.id
  volume_id  = each.value.id
}
