terraform {
  required_version = ">= 1.9.5"

  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = ">= 2.41.0"
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

resource "digitalocean_firewall" "main" {
  count = var.firewall_enable ? 1 : 0
  name  = "${digitalocean_droplet.main.name}-fw"

  droplet_ids = [digitalocean_droplet.main.id]

  dynamic "inbound_rule" {
    for_each = var.firewall_inbound_rule
    content {
      protocol                  = inbound_rule.value.protocol
      port_range                = inbound_rule.value.port_range
      source_addresses          = inbound_rule.value.source_addresses
      source_droplet_ids        = inbound_rule.value.droplet_ids
      source_load_balancer_uids = inbound_rule.value.load_balancer_uids
      source_kubernetes_ids     = inbound_rule.value.kubernetes_ids
      source_tags               = inbound_rule.value.tags
    }
  }
  dynamic "outbound_rule" {
    for_each = var.firewall_outbound_rule
    content {
      protocol                       = outbound_rule.value.protocol
      port_range                     = outbound_rule.value.port_range
      destination_addresses          = outbound_rule.value.destination_addresses
      destination_droplet_ids        = outbound_rule.value.droplet_ids
      destination_kubernetes_ids     = outbound_rule.value.kubernetes_ids
      destination_load_balancer_uids = outbound_rule.value.load_balancer_uids
      destination_tags               = outbound_rule.value.tags
    }
  }
}
