terraform {
  required_version = ">= 1.9.5"

  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.41.0"
    }
  }
}

provider "digitalocean" {
  token = var.do_token
}
