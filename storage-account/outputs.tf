output "storage_account_id" {
  description = "The ID of the storage account"
  value       = module.storage_account.resource_id
}

output "storage_account_name" {
  description = "The name of the storage account"
  value       = module.storage_account.name
}

output "containers" {
  description = "Created containers within the storage account"
  value       = module.storage_account.containers
}
