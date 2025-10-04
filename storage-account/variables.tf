variable "location" {
  description = "Azure region where the resources will be deployed."
  type        = string
  default     = "westeurope"
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
  default     = "rg-terraform-example"
}

variable "storage_account_name" {
  description = "The name of the storage account."
  type        = string
  default     = "storaccountexample"
}

variable "account_tier" {
  description = "The performance tier of the storage account."
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "The replication strategy to use for this storage account."
  type        = string
  default     = "LRS"
}

variable "tags" {
  description = "Tags for all resources."
  type        = map(string)
  default = {
    ManagedBy = "Terraform"
    Project   = "AI-Generated"
  }
}
