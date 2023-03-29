output "resource_group_name" {
  value       = module.main.vnet_resource_group_name
  description = "Outputs required for the AKS module / terratest"
}

output "address_space" {
  value       = module.main.vnet_address_space
  description = "Outputs required for the AKS module / terratest"
}

output "address_prefix" {
  value       = module.main.subnet_address_prefix
  description = "Outputs required for the AKS module / terratest"
}
