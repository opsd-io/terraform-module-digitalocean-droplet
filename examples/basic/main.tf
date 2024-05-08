# Create a new Web Droplet in the nyc1 region

module "digitalocean_droplet" {
  source = "github.com/opsd-io/terraform-module-digitalocean-droplet?ref=install-node-exporter-on-droplet"
  image  = "ubuntu-22-04-x64"
  name   = "web-1"
  region = "nyc1"
  size   = "s-1vcpu-1gb"
  #ser_data = file("${path.module}./../nodeexporter1.sh")
  tags = ["node_exporter"]
}
