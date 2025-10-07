variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The Azure region where the resources will be deployed"
  type        = string
  default     = "East US"
}

variable "environment" {
  description = "The environment for resource naming"
  type        = string
  default     = "dev"
}