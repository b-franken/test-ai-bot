variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The Azure location where resources will be deployed"
  type        = string
  default     = "East US"
}

variable "environment" {
  description = "The environment suffix for naming conventions"
  type        = string
  default     = "dev"
}

variable "owner" {
  description = "The owner of the resources"
  type        = string
  default     = "John Doe"
}

variable "department" {
  description = "The department responsible for the resources"
  type        = string
  default     = "IT"
}