variable "location" {
  description = "Azure region for resources"
  type        = string
  default     = "westeurope"
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "rg-terraform-keyvault"
}

variable "key_vault_name" {
  description = "Name of the Key Vault"
  type        = string
  default     = "kv-example"
}

variable "tenant_id" {
  description = "Azure Active Directory Tenant ID"
  type        = string
  default     = "00000000-0000-0000-0000-000000000000"  # Replace with actual Tenant ID
}

variable "object_id" {
  description = "Object ID for Key Vault access policy"
  type        = string
  default     = "00000000-0000-0000-0000-000000000000"  # Replace with actual Object ID
}

variable "tags" {
  description = "Tags for all resources"
  type        = map(string)
  default = {
    ManagedBy = "Terraform"
    Project   = "AI-Generated"
  }
}
