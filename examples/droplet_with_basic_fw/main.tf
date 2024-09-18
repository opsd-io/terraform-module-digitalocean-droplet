# Create a new Web Droplet in the nyc1 region with enabled firewall

module "digitalocean_droplet" {
  source = "github.com/opsd-io/terraform-module-digitalocean-droplet?ref=main"
  # source          = "../.."
  image           = "ubuntu-20-04-x64"
  name            = "web-1"
  region          = "nyc1"
  size            = "s-1vcpu-1gb"
  firewall_enable = true
  firewall_inbound_rule = [
    {
      protocol   = "tcp"
      port_range = "22"
      source_addresses = [
        "0.0.0.0/0",
      "::/0"]
    },
    {
      protocol   = "tcp"
      port_range = "80"
      source_addresses = [
        "0.0.0.0/0",
      "::/0"]
    },
    {
      protocol   = "tcp"
      port_range = "5432"
      tags       = ["postgresql"]
    }
  ]
  # leaving firewall_outbound_rule variable undefined you will allow for any TCP and UDP traffic.
}
