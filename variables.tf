variable "location" {
  description = "Azure region for resources"
  type        = string
  default     = "westeurope"
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "dev-terraform-agents-rg"
}

variable "storage_account_name" {
  description = "The name of the storage account"
  type        = string
  default     = "devtfagentsstorage"
}

variable "tags" {
  description = "Tags for all resources"
  type        = map(string)
  default = {
    environment = "dev"
    project     = "terraform-agents"
    ManagedBy   = "Terraform"
  }
}
