variable "environment" {
  description = "The environment suffix for naming."
  type        = string
  default     = "dev"

  validation {
    condition     = contains(["dev", "test", "prod"], var.environment)
    error_message = "Environment must be dev, test, or prod."
  }
}

variable "location" {
  description = "The Azure region in which resources will be created."
  type        = string
  default     = "East US"
}

variable "tags" {
  description = "A map of tags to assign to resources."
  type        = map(string)
  default     = {
    environment = "dev"
    project     = "example"
  }
}
