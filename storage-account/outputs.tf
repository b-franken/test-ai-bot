output "storage_account_id" {
  description = "The ID of the storage account."
  value       = module.storage_account.resource_id
}

output "storage_account_name" {
  description = "The name of the storage account."
  value       = var.storage_account_name
}
