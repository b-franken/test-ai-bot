variable "location" {
  description = "The location where resources will be created."
  type        = string
  default     = "East US"
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "tags" {
  description = "Tags to be applied to resources."
  type        = map(string)
  default     = {
    env   = "Dev"
    owner = "John Doe"
    dept  = "IT"
  }
}
