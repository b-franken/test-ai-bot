output "vnet_resource_id" {
  description = "The resource ID of the virtual network."
  value       = module.virtual_network.resource_id
}

output "vnet_name" {
  description = "The name of the virtual network."
  value       = module.virtual_network.name
}
