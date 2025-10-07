output "storage_account_id" {
  description = "The ID of the storage account."
  value       = module.storage_account.resource_id
}

output "vnet_id" {
  description = "The ID of the virtual network."
  value       = module.vnet.resource_id
}
