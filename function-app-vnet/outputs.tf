output "function_app_resource_id" {
  description = "Resource ID of the Function App"
  value       = module.function_app.resource_id
  sensitive   = true
}

output "vnet_resource_id" {
  description = "Resource ID of the Virtual Network"
  value       = module.vnet.resource_id
  sensitive   = true
}
