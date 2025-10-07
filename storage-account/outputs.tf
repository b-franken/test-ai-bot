output "storage_account_id" {
  description = "The ID of the storage account"
  value       = module.this.resource_id
}

output "storage_account_primary_blob_endpoint" {
  description = "The primary blob endpoint of the storage account"
  value       = module.this.fqdn
}