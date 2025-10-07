variable "environment" {
  description = "The environment suffix for naming conventions."
  type        = string
  default     = "prod"

  validation {
    condition     = contains(["dev", "test", "prod"], var.environment)
    error_message = "Environment must be one of: dev, test, prod."
  }
}

variable "location" {
  description = "The Azure region where resources will be deployed."
  type        = string
  default     = "East US"
}

variable "tags" {
  description = "A map of tags to assign to resources."
  type        = map(string)
  default     = {}
}
