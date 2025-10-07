terraform {
  required_version = "~> 1.9"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
  resource_provider_registrations = "core"
}

resource "azurerm_resource_group" "this" {
  name     = "example-resources"
  location = "West Europe"
}

module "naming" {
  source = "Azure/naming/azurerm"
  suffix = [var.environment]
}

module "this" {
  source = "Azure/avm-res-storage-storageaccount/azurerm"

  location              = azurerm_resource_group.this.location
  name                  = module.naming.storage_account.name_unique
  resource_group_name   = azurerm_resource_group.this.name
  account_kind          = "StorageV2"
  account_replication_type = "ZRS"
  account_tier          = "Standard"
  https_traffic_only_enabled = true
  min_tls_version       = "TLS1_2"
  public_network_access_enabled = false
  infrastructure_encryption_enabled = true  # Added encryption
  tags = {
    env   = "Dev"
    owner = "John Doe"
    dept  = "IT"
  }
}
