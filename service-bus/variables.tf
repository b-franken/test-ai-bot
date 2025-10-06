variable "location" {
  description = "Azure region for resources"
  type        = string
  default     = "eastus"
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "rg-servicebus-example"
}

variable "servicebus_namespace_name" {
  description = "Name of the Service Bus Namespace"
  type        = string
  default     = "sb-namespace-example"
}

variable "sku" {
  description = "The SKU of the Service Bus Namespace"
  type        = string
  default     = "Standard"
}

variable "tags" {
  description = "Tags for all resources"
  type        = map(string)
  default = {
    ManagedBy = "Terraform"
    Project   = "AI-Generated"
  }
}
