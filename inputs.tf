variable "vnet_resource_group_name" {
  description = "Resource group name of the vnet"
  type        = string
}

variable "location" {
  description = "Location for the resource group"
  type        = string
}

variable "address_space" {
  description = "Address space of virtual network"
  type        = list(string)
}

#variable "subnet_address_prefixes" {
#  description = "Address prefixes for subnets"
#  type        = list(string)
#}

variable "virtual_network_name" {
  description = "Name of the vnet"
  type        = string
}

#variable "subnet_name" {
#  description = "Name of the subnet"
#  type        = string
#}

variable "tags" {
  description = "Map of tags that will be applied to the VNet"
  type        = map(string)
  default     = {}
}

variable "subnets" {
  description = "List of subnets"
  type = list(object({
    name             = string
    address_prefixes = list(string)
  }))
}
