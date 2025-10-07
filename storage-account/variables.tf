variable "location" {
  description = "Azure region for resources"
  type        = string
  default     = "East US"
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "rg-storage-account"
}

variable "storage_account_name" {
  description = "Name of the storage account"
  type        = string
  default     = "stgacctexample"
}

variable "tags" {
  description = "Tags for all resources"
  type        = map(string)
  default = {
    Environment = "Production"
    ManagedBy   = "Terraform"
  }
}
