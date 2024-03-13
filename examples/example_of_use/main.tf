# The following arguments are supported:

# image - (Required) The Droplet image ID or slug. This could be either image ID or droplet snapshot ID.
# name - (Required) The Droplet name.
# region - The region where the Droplet will be created.
# size - (Required) The unique slug that indentifies the type of Droplet. You can find a list of available slugs on DigitalOcean API documentation.
provider "digitalocean" {
  token = var.do_token
}
# Create a new Web Droplet in the nyc2 region
resource "digitalocean_droplet" "web" {
  image  = "ubuntu-20-04-x64"
  name   = "web-1"
  region = "nyc1"
  size   = "s-1vcpu-1gb"
}
