terraform {
  required_version = ">= 1.9.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.71, < 5.0"
    }
  }
}

provider "azurerm" {
  features {}
  resource_provider_registrations = "core"
  use_cli                          = false
  use_msi                          = false
}

# Resource Group
resource "azurerm_resource_group" "this" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

# Storage Account Module
module "storage" {
  source  = "Azure/avm-res-storage-storageaccount/azurerm"
  version = "~> 0.6.4"

  name                = var.storage_account_name
  resource_group_name = azurerm_resource_group.this.name
  location            = azurerm_resource_group.this.location
  enable_telemetry    = true

  account_kind             = "StorageV2"
  account_tier             = "Standard"
  account_replication_type = "LRS"

  infrastructure_encryption_enabled = true

  tags = var.tags
}
