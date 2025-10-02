output "storage_account_id" {
  description = "Resource ID of the storage account"
  value       = module.storage_account.resource_id
}

output "storage_account_primary_blob_endpoint" {
  description = "Primary Blob endpoint for the storage account"
  value       = module.storage_account.primary_blob_endpoint
}

output "container_name" {
  description = "Name of the blob container for Terraform state files"
  value       = azurerm_storage_container.tfstate.name
}
