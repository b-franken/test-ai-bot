terraform {
  required_version = ">= 1.9.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "this" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

module "storage_account" {
  source  = "Azure/avm-res-storage-storageaccount/azurerm"
  version = "~> 0.2.0"

  name                = var.storage_account_name
  resource_group_name = azurerm_resource_group.this.name
  location            = var.location

  enable_https_traffic_only = true
  account_tier              = "Standard"
  account_replication_type  = "LRS"

  enable_telemetry = true
  tags             = var.tags
}

resource "azurerm_storage_container" "tfstate" {
  name                  = "tfstate"
  storage_account_name  = module.storage_account.name
  container_access_type = "private"
}
