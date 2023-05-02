output "vnet_resource_group_name" {
  value = azurerm_resource_group.main.name
}

output "vm_subnet_id" {
  value = azurerm_subnet.subnet["VmSubnet"].id
}

output "aks_subnet_id" {
  value = azurerm_subnet.subnet["AKSSubnet"].id
}


#output "subnet_ids" {
#  description = "Subnet ID for each subnet"
#  value       = { for subnet_name, subnet in azurerm_subnet.subnet : subnet_name => subnet.id }
#}

#output "subnet_ids" {
#  value = [for subnet in azurerm_subnet.subnet : subnet.id]
#}
