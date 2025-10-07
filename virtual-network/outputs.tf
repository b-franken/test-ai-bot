output "virtual_network_resource_id" {
  description = "The resource ID of the virtual network."
  value       = module.vnet.resource_id
}

output "virtual_network_name" {
  description = "The name of the virtual network."
  value       = module.vnet.name
}

output "subnet1_resource_id" {
  description = "The resource ID of the first subnet."
  value       = azurerm_subnet.subnet1.id
}

output "subnet2_resource_id" {
  description = "The resource ID of the second subnet."
  value       = azurerm_subnet.subnet2.id
}
