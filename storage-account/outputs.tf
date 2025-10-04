output "storage_account_resource_id" {
  description = "The resource ID of the created storage account."
  value       = module.storage_account.resource_id
  sensitive   = true
}

output "storage_account_name" {
  description = "The name of the created storage account."
  value       = module.storage_account.name
  sensitive   = true
}

output "storage_account_primary_endpoint" {
  description = "The primary blob endpoint of the storage account."
  value       = module.storage_account.resource.primary_blob_endpoint
  sensitive   = true
}
