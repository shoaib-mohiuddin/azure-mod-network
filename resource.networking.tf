resource "azurerm_resource_group" "main" {
  name     = var.vnet_resource_group_name
  location = var.location
}

#resource "azurerm_network_security_group" "nsg" {
#  name                = "example-security-group"
#  location            = azurerm_resource_group.main.location
#  resource_group_name = azurerm_resource_group.main.name
#}

resource "azurerm_virtual_network" "vnet" {
  name                = var.virtual_network_name
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  address_space       = var.address_space

  tags = var.tags
}

resource "azurerm_subnet" "subnet" {
  for_each = {
    for subnet in var.subnets :
    subnet.name => subnet
  }

  name                 = each.value.name
  address_prefixes     = each.value.address_prefixes
  resource_group_name  = azurerm_resource_group.main.name
  virtual_network_name = azurerm_virtual_network.vnet.name

  tags = var.tags
}
