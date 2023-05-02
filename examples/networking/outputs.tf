output "vnet_resource_group_name" {
  value = module.main.vnet_resource_group_name
}

output "vm_subnet_id" {
  value = module.main.vm_subnet_id
}

output "aks_subnet_id" {
  value = module.main.aks_subnet_id
}

#output "subnet_ids" {
#  value = module.main.subnet_ids
#}
