output "vnet_resource_id" {
  description = "The resource ID of the virtual network."
  value       = module.vnet.resource_id
  sensitive   = true
}

output "storage_account_id" {
  description = "The resource ID of the storage account."
  value       = module.storage.resource_id
  sensitive   = true
}

output "private_endpoint_ids" {
  description = "The private endpoint resource IDs."
  value       = module.storage.private_endpoints
  sensitive   = true
}
