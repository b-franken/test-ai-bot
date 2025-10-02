terraform {
  required_version = ">= 1.9.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.116.0, < 4.0.0"
    }
  }
}

provider "azurerm" {
  features {}
  skip_provider_registration = true
}

# Resource Group
resource "azurerm_resource_group" "this" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

# Storage Account Module
module "storage_account" {
  source  = "Azure/avm-res-storage-storageaccount/azurerm"
  version = "~> 0.2"

  name                = var.storage_account_name
  resource_group_name = azurerm_resource_group.this.name
  location            = var.location
  enable_telemetry    = true

  account_tier             = "Standard"
  account_replication_type = "LRS"

  containers = {
    terraform_state = {
      name                  = "terraform-state"
      container_access_type = "private"
    }
  }
  tags = var.tags
}
