output "vnet_resource_id" {
  description = "Resource ID of the virtual network"
  value       = module.virtual_network.resource_id
}

output "vnet_name" {
  description = "Name of the virtual network"
  value       = module.virtual_network.name
}
