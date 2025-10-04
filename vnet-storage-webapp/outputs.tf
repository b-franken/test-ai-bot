output "vnet_resource_id" {
  description = "The resource ID of the virtual network"
  value       = module.vnet.resource_id
  sensitive   = true
}

output "vnet_name" {
  description = "The name of the virtual network"
  value       = module.vnet.name
  sensitive   = true
}

output "storage_account_id" {
  description = "The ID of the storage account"
  value       = module.storage.resource_id
  sensitive   = true
}

output "storage_account_name" {
  description = "The name of the storage account"
  value       = module.storage.name
  sensitive   = true
}

output "webapp_resource_id" {
  description = "The resource ID of the web application"
  value       = module.webapp.resource_id
  sensitive   = true
}

output "webapp_name" {
  description = "The name of the web application"
  value       = module.webapp.name
  sensitive   = true
}

output "webapp_fqdn" {
  description = "The fully qualified domain name of the web app"
  value       = module.webapp.resource_uri
  sensitive   = true
}
