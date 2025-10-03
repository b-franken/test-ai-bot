variable "location" {
  description = "Azure region for resources"
  type        = string
  default     = "westeurope"

  validation {
    condition     = contains(["eastus", "westeurope", "centralus"], var.location)
    error_message = "The location must be one of the following: eastus, westeurope, centralus."
  }
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "rg-terraform-vnet"
}

variable "vnet_name" {
  description = "Name of the virtual network"
  type        = string
  default     = "vnet-example"
}

variable "tags" {
  description = "Tags for all resources"
  type        = map(string)
  default = {
    ManagedBy = "Terraform"
    Project   = "AI-Generated"
  }
}
