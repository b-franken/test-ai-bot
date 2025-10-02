variable "location" {
  description = "Azure region for resources"
  type        = string
  default     = "westeurope"

  validation {
    condition     = can(regex("^(westeurope|northeurope|eastus)$", var.location))
    error_message = "Location must be one of: westeurope, northeurope, eastus."
  }
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "rg-terraform-storage"

  validation {
    condition     = length(var.resource_group_name) > 1
    error_message = "Resource group name must be at least 2 characters long."
  }
}

variable "storage_account_name" {
  description = "Name of the storage account"
  type        = string
  default     = "stterraformstate"

  validation {
    condition     = length(var.storage_account_name) >= 3
    error_message = "Storage account name must be at least 3 characters long."
  }
}

variable "tags" {
  description = "Tags for all resources"
  type        = map(string)
  default     = {
    ManagedBy   = "Terraform"
    Project     = "TerraformStateStorage"
    Environment = "dev"
  }
}
