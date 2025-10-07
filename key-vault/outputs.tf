output "key_vault_id" {
  description = "The ID of the Key Vault"
  value       = azurerm_key_vault.this.id
  sensitive   = true
}

output "key_vault_name" {
  description = "The name of the Key Vault"
  value       = azurerm_key_vault.this.name
  sensitive   = true
}

output "key_vault_uri" {
  description = "The URI of the Key Vault"
  value       = azurerm_key_vault.this.vault_uri
  sensitive   = true
}
