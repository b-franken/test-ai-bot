variable "location" {
  description = "Azure region for resources"
  type        = string
  default     = "westeurope"
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "rg-storage-example"
}

variable "storage_account_name" {
  description = "Name of the storage account"
  type        = string
  default     = "storageacctdev"
}

variable "tags" {
  description = "Tags for all resources"
  type        = map(string)
  default = {
    ManagedBy = "Terraform"
    Environment = "Development"
    Project   = "AI-Generated"
  }
}
