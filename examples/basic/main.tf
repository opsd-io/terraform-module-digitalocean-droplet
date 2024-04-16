# Create a new Web Droplet in the nyc1 region

module "digitalocean_droplet" {
  source = "github.com/opsd-io/terraform-module-digitalocean-droplet"
  image  = "ubuntu-20-04-x64"
  name   = "web-1"
  region = "nyc1"
  size   = "s-1vcpu-1gb"
}
