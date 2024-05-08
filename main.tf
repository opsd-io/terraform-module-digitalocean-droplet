terraform {
  required_version = ">= 1.5.7"

  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = ">= 2.34.1"
    }
    # cloudinit = {
    #   source  = "hashicorp/cloudinit"
    #   version = "2.3.4"
    # }
  }
}

resource "digitalocean_droplet" "main" {
  image     = var.image
  name      = var.name
  region    = var.region
  size      = var.size
  user_data = file(var.user_data)
  #user_data = file("${path.root}/nodeexporter.sh")
  # user_data = var.user_data != "" ? var.user_data : file("${path.root}/nodeexporter.sh")
  tags       = var.tags
  backups    = var.backups
  monitoring = var.monitoring
  ssh_keys   = var.ssh_keys
  vpc_uuid   = var.vpc_uuid

  lifecycle {
    ignore_changes = [user_data]
  }
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

# data "cloudinit_config" "nodeexporter" {
#   part {
#     content_type = "text/x-shellscript"
#     content      = file("${path.root}/nodeexporter.sh")
#   }

#   part {
#     content_type = "text/cloud-config"
#     content = yamlencode({
#       write_files = [
#         {
#           encoding    = "b64"
#           content     = filebase64("${path.root}/nodeexporter.txt")
#           path        = "/etc/systemd/system/node_exporter.service"
#           owner       = "node_exporter:node_exporter"
#           permissions = "0755"
#         },
#       ]
#     })
#   }

#   part {
#     content_type = "text/x-shellscript"
#     content      = file("${path.root}/nodeexporter_start.sh")
#   }
# }

# data "cloudinit_config" "nodeexporter" {
#   count      = var.node_exporter ? 1 : 0
#   gzip          = false
#   base64_encode = false
#   //user_data = data.cloudinit_config.nodeexporter.rendered
#   # Node
#   part {
#     filename     = "nodeexporter.sh"
#     content_type = "text/x-shellscript"
#     content      = file("${path.root}/nodeexporter.sh")
#   }
# }
