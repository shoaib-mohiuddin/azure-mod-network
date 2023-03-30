# azure-mod-network

#### Table of Contents
1. [Usage](#usage)
2. [Requirements](#requirements)
3. [Providers](#Providers)
4. [Inputs](#inputs)
5. [Outputs](#outputs)
## Usage
*various commands
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >=0.12 |
| azurerm | ~>2.0 |
| random | ~>3.0 |
| tls | ~>4.0 |

## Providers

| Name | Version |
|------|---------|
| azurerm | ~>2.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_resource_group.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
| [azurerm_subnet.subnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet) | resource |
| [azurerm_virtual_network.vnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| address\_space | Address space of virtual network | `list(string)` | n/a | yes |
| location | Location for the resource group | `string` | n/a | yes |
| subnet\_address\_prefixes | Address prefixes for subnets | `list(string)` | n/a | yes |
| subnet\_name | Name of the subnet | `string` | n/a | yes |
| tags | Map of tags that will be applied to the VNet | `map(string)` | `{}` | no |
| virtual\_network\_name | Name of the vnet | `string` | n/a | yes |
| vnet\_resource\_group\_name | Resource group name of the vnet | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| vm\_subnet\_id | n/a |
| vnet\_resource\_group\_name | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
