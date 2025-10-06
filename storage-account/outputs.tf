output "storage_account_id" {
  description = "The storage account resource ID"
  value       = module.storage.resource_id
  sensitive   = true
}

output "storage_account_name" {
  description = "The storage account name"
  value       = module.storage.name
  sensitive   = true
}

output "storage_account_primary_blob_endpoint" {
  description = "The primary Blob endpoint of the storage account"
  value       = module.storage.resource.primary_blob_endpoint
  sensitive   = true
}
