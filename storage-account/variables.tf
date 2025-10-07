variable "location" {
  description = "The location of the resource group."
  type        = string
  default     = "East US"
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to the resources."
  type        = map(string)
  default     = {
    env   = "Production"
    owner = "John Doe"
    dept  = "IT"
  }
}

variable "storage_account_name" {
  description = "The desired name for the storage account."
  type        = string
}
