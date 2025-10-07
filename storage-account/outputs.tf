output "storage_account_id" {
  description = "The ID of the Storage Account"
  value       = module.storage_account.resource_id
  sensitive   = true
}

output "storage_account_name" {
  description = "The name of the Storage Account"
  value       = module.storage_account.name
  sensitive   = true
}

output "primary_blob_endpoint" {
  description = "The primary Blob endpoint of the Storage Account"
  value       = module.storage_account.resource.primary_blob_endpoint
  sensitive   = true
}
