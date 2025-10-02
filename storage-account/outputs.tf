output "storage_account_id" {
  description = "The ID of the Storage Account"
  value       = module.storage_account.resource_id
}

output "storage_account_name" {
  description = "The name of the Storage Account"
  value       = module.storage_account.name
}

output "container_name" {
  description = "The name of the blob container for Terraform state files"
  value       = "terraform-state"
}
