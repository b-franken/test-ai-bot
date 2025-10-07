output "storage_account_name" {
  description = "The name of the storage account"
  value       = module.storage_account.name
}

output "virtual_network_name" {
  description = "The name of the virtual network"
  value       = module.virtual_network.name
}
