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
  name     = var.resource_group_name
  location = var.location
}

resource "random_string" "this" {
  length  = 8
  special = false
  upper   = false
  number  = true
}

module "this" {
  source = "Azure/avm-res-storage-storageaccount/azurerm"

  location                = azurerm_resource_group.this.location
  name                    = "${var.environment}-${random_string.this.result}"
  resource_group_name     = azurerm_resource_group.this.name
  account_replication_type = "ZRS"
  public_network_access_enabled = false
  https_traffic_only_enabled    = true
  min_tls_version               = "TLS1_2"
  account_kind                  = "StorageV2"
  account_tier                  = "Standard"
  containers = {
    blob_container0 = {
      name = "blob-container-${random_string.this.result}-0"
    }
  }
  tags = {
    env   = var.environment
    owner = "John Doe"
    dept  = "IT"
  }

  # Added encryption configuration
  infrastructure_encryption_enabled = true
}
