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

variable "log_analytics_workspace_name" {
  description = "Name of the Log Analytics Workspace"
  type        = string
  default     = "loganalytics-workspace"
}

variable "tags" {
  description = "Tags for all resources"
  type        = map(string)
  default     = {
    ManagedBy = "Terraform"
    Project   = "AI-Generated"
  }
}
