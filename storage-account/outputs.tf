output "storage_account_id" {
  description = "The ID of the Storage Account."
  value       = module.storage_account.resource_id
  sensitive   = true
}

output "storage_account_name" {
  description = "The name of the storage account."
  value       = module.storage_account.name
  sensitive   = true
}
