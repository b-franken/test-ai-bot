variable "location" {
  description = "Azure region for resources"
  type        = string
  default     = "westeurope"
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "rg-terraform-example"
}

variable "vnet_name" {
  description = "Name of the virtual network"
  type        = string
  default     = "vnet-simple"
}

variable "address_space" {
  description = "The address space that is used by the virtual network."
  type        = set(string)
  default     = ["10.0.0.0/16"]
}

variable "tags" {
  description = "Tags for all resources"
  type        = map(string)
  default = {
    ManagedBy = "Terraform"
    Project   = "AI-Generated"
  }
}
