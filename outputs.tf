output "vnet_resource_group_name" {
  value = azurerm_resource_group.main.name
}

output "virtual_network_name" {
  value = azurerm_virtual_network.vnet.name
}

output "subnet_name" {
  value = azurerm_subnet.subnet.name
}

output "vnet_address_space" {
  value = azurerm_virtual_network.vnet.address_space
}

output "subnet_address_prefix" {
  value = azurerm_subnet.subnet.address_prefixes
}
