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
  use_cli                   = false
  use_msi                   = false
}

resource "azurerm_resource_group" "this" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

module "storage" {
  source                = "Azure/avm-res-storage-storageaccount/azurerm"
  version               = "~> 0.2"
  name                  = var.storage_account_name
  resource_group_name   = azurerm_resource_group.this.name
  location              = var.location
  enable_telemetry      = true
  account_tier          = var.account_tier
  account_replication_type = var.account_replication_type
  tags                  = var.tags

  containers = {
    data = {
      name                  = "data"
      container_access_type = "private"
    }
  }
}