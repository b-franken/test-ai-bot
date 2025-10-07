variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The Azure location where resources will be deployed"
  type        = string
}

variable "environment" {
  description = "The environment name, used for naming resources"
  type        = string
}

variable "public_network_access_enabled" {
  description = "Whether public network access is enabled"
  type        = bool
  default     = false
}

variable "tags" {
  description = "A map of tags to assign to the resources"
  type        = map(string)
  default     = {
    env   = "Dev"
    owner = "John Doe"
    dept  = "IT"
  }
}
