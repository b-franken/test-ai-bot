output "storage_account_id" {
  description = "The ID of the Storage Account."
  value       = module.storage_account.resource_id
  sensitive   = true
}

output "storage_account_name" {
  description = "The name of the Storage Account."
  value       = module.storage_account.name
  sensitive   = true
}

output "storage_account_fqdn" {
  description = "The FQDN for the storage services."
  value       = module.storage_account.fqdn
  sensitive   = true
}
