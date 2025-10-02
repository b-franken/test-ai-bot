output "storage_account_id" {
  description = "The ID of the Storage Account"
  value       = module.storage.resource_id
}

output "storage_account_name" {
  description = "The name of the Storage Account"
  value       = module.storage.name
}