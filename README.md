<picture>
  <source media="(prefers-color-scheme: dark)" srcset="https://raw.githubusercontent.com/opsd-io/terraform-module-template/main/.github/img/opsd-github-repo-dark-mode.svg">
  <source media="(prefers-color-scheme: light)" srcset="https://raw.githubusercontent.com/opsd-io/terraform-module-template/main/.github/img/opsd-github-repo-light-mode.svg">
  <img alt="OPSd - the unique and effortless way of managing cloud infrastructure." src="https://raw.githubusercontent.com/opsd-io/terraform-module-template/update-tools/.github/img/opsd-github-repo-light-mode.svg" width="400">
</picture>

Meet **OPSd**. The unique and effortless way of managing cloud infrastructure.

# terraform-module-template

## Introduction

What does the module provide?

## Usage

```hcl
module "module_name" {
  source  = "github.com/opsd-io/module_name?ref=v0.0.1"

  # Variables
  variable_1 = "foo"
  variable_2 = "bar"
}
```

**IMPORTANT**: Make sure not to pin to master because there may be breaking changes between releases.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5.7 |
| <a name="requirement_digitalocean"></a> [digitalocean](#requirement\_digitalocean) | >= 2.34.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_digitalocean"></a> [digitalocean](#provider\_digitalocean) | >= 2.34.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [digitalocean_droplet.main](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/droplet) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_droplet_image"></a> [droplet\_image](#input\_droplet\_image) | (Required) The Droplet image ID or slug. This could be either image ID or droplet snapshot ID. | `string` | n/a | yes |
| <a name="input_droplet_name"></a> [droplet\_name](#input\_droplet\_name) | (Required) The Droplet name. | `string` | n/a | yes |
| <a name="input_droplet_size"></a> [droplet\_size](#input\_droplet\_size) | (Required) The unique slug that indentifies the type of Droplet. | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | The region where the Droplet will be created. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_droplet_arn"></a> [droplet\_arn](#output\_droplet\_arn) | The URN of the droplet. |
| <a name="output_droplet_id"></a> [droplet\_id](#output\_droplet\_id) | The ID of the droplet. |
| <a name="output_droplet_image"></a> [droplet\_image](#output\_droplet\_image) | The image of the Droplet. |
| <a name="output_droplet_ipv4_address"></a> [droplet\_ipv4\_address](#output\_droplet\_ipv4\_address) | The IPv4 address. |
| <a name="output_droplet_name"></a> [droplet\_name](#output\_droplet\_name) | The name of the Droplet. |
| <a name="output_droplet_region"></a> [droplet\_region](#output\_droplet\_region) | The region of the Droplet. |
| <a name="output_droplet_status"></a> [droplet\_status](#output\_droplet\_status) | The status of the Droplet. |
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
