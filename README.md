<picture>
  <source media="(prefers-color-scheme: dark)" srcset="https://raw.githubusercontent.com/opsd-io/terraform-module-template/main/.github/img/opsd-github-repo-dark-mode.svg">
  <source media="(prefers-color-scheme: light)" srcset="https://raw.githubusercontent.com/opsd-io/terraform-module-template/main/.github/img/opsd-github-repo-light-mode.svg">
  <img alt="OPSd - the unique and effortless way of managing cloud infrastructure." src="https://raw.githubusercontent.com/opsd-io/terraform-module-template/update-tools/.github/img/opsd-github-repo-light-mode.svg" width="400">
</picture>

Meet **OPSd**. The unique and effortless way of managing cloud infrastructure.

# terraform-module-template

## Introduction

DigitalOcean virtual machine (droplet) module

## Usage

```hcl
module "digitalocean_droplet" {
  source = "github.com/opsd-io/terraform-module-digitalocean-droplet?ref=v1.0.0"
  image           = "ubuntu-20-04-x64"
  name            = "web-1"
  region          = "nyc1"
  size            = "s-1vcpu-1gb"
  firewall_enable = false
}
```

**IMPORTANT**: Make sure not to pin to main branch because there may be breaking changes between releases.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.9.5 |
| <a name="requirement_digitalocean"></a> [digitalocean](#requirement\_digitalocean) | >= 2.41.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_digitalocean"></a> [digitalocean](#provider\_digitalocean) | >= 2.41.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [digitalocean_droplet.main](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/droplet) | resource |
| [digitalocean_firewall.main](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/firewall) | resource |
| [digitalocean_volume.main](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/volume) | resource |
| [digitalocean_volume_attachment.main](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/volume_attachment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_backups"></a> [backups](#input\_backups) | A list of the tags to be applied to this Droplet. | `bool` | `false` | no |
| <a name="input_firewall_enable"></a> [firewall\_enable](#input\_firewall\_enable) | Flag to control the droplet firewall creation. | `bool` | `false` | no |
| <a name="input_firewall_inbound_rule"></a> [firewall\_inbound\_rule](#input\_firewall\_inbound\_rule) | List of objects that represent the configuration of each inbound rule. | <pre>list(object({<br>    protocol           = string<br>    port_range         = string<br>    source_addresses   = optional(list(string))<br>    droplet_ids        = optional(list(string))<br>    load_balancer_uids = optional(list(string))<br>    kubernetes_ids     = optional(list(string))<br>    tags               = optional(list(string))<br>  }))</pre> | <pre>[<br>  {<br>    "port_range": "1-65535",<br>    "protocol": "tcp",<br>    "source_addresses": [<br>      "0.0.0.0/0",<br>      "::/0"<br>    ]<br>  },<br>  {<br>    "port_range": "1-65535",<br>    "protocol": "udp",<br>    "source_addresses": [<br>      "0.0.0.0/0",<br>      "::/0"<br>    ]<br>  }<br>]</pre> | no |
| <a name="input_firewall_outbound_rule"></a> [firewall\_outbound\_rule](#input\_firewall\_outbound\_rule) | List of objects that represent the configuration of each outbound rule. | <pre>list(object({<br>    protocol              = string<br>    port_range            = string<br>    destination_addresses = optional(list(string))<br>    droplet_ids           = optional(list(string))<br>    load_balancer_uids    = optional(list(string))<br>    kubernetes_ids        = optional(list(string))<br>    tags                  = optional(list(string))<br>  }))</pre> | <pre>[<br>  {<br>    "destination_addresses": [<br>      "0.0.0.0/0",<br>      "::/0"<br>    ],<br>    "port_range": "1-65535",<br>    "protocol": "tcp"<br>  },<br>  {<br>    "destination_addresses": [<br>      "0.0.0.0/0",<br>      "::/0"<br>    ],<br>    "port_range": "1-65535",<br>    "protocol": "udp"<br>  }<br>]</pre> | no |
| <a name="input_image"></a> [image](#input\_image) | The Droplet image ID or slug. This could be either image ID or droplet snapshot ID. | `string` | n/a | yes |
| <a name="input_monitoring"></a> [monitoring](#input\_monitoring) | A list of the tags to be applied to this Droplet. | `bool` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | The Droplet name. | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | The region where the Droplet will be created. | `string` | n/a | yes |
| <a name="input_size"></a> [size](#input\_size) | The unique slug that indentifies the type of Droplet. | `string` | n/a | yes |
| <a name="input_ssh_keys"></a> [ssh\_keys](#input\_ssh\_keys) | A list of the tags to be applied to this Droplet. | `list(string)` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A list of the tags to be applied to this Droplet. | `list(string)` | `[]` | no |
| <a name="input_user_data"></a> [user\_data](#input\_user\_data) | A string of the desired User Data for the Droplet. | `string` | `null` | no |
| <a name="input_volumes"></a> [volumes](#input\_volumes) | Volume name and size for for\_each, each.key is used as name, each.value is used as size | `map(number)` | `{}` | no |
| <a name="input_vpc_uuid"></a> [vpc\_uuid](#input\_vpc\_uuid) | The ID of the VPC where the load balancer will be located. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | The URN of the droplet. |
| <a name="output_id"></a> [id](#output\_id) | The ID of the droplet. |
| <a name="output_image"></a> [image](#output\_image) | The image of the Droplet. |
| <a name="output_ipv4_address"></a> [ipv4\_address](#output\_ipv4\_address) | The IPv4 address. |
| <a name="output_name"></a> [name](#output\_name) | The name of the Droplet. |
| <a name="output_region"></a> [region](#output\_region) | The region of the Droplet. |
| <a name="output_status"></a> [status](#output\_status) | The status of the Droplet. |
<!-- END_TF_DOCS -->

## Examples of usage

Do you want to see how the module works? See all the [usage examples](examples).

## Related modules

The list of related modules (if present).

## Contributing

If you are interested in contributing to the project, see see our [guide](https://github.com/opsd-io/contribution).

## Support

If you have a problem with the module or want to propose a new feature, you can report it via the project's (Github) issue tracker.

If you want to discuss something in person, you can join our community on [Slack](https://join.slack.com/t/opsd-community/signup).

## License

[Apache License 2.0](LICENSE)
