terraform {
  required_version = ">= 1.0.0"
}

provider "azurerm" {
  features {}
  resource_provider_registrations = "core"
}

resource "azurerm_resource_group" "this" {
  name     = var.resource_group_name
  location = var.location
}

module "storage_account" {
  source  = "Azure/avm-res-storage-storageaccount/azurerm"

  location                     = azurerm_resource_group.this.location
  name                         = var.storage_account_name
  resource_group_name          = azurerm_resource_group.this.name
  account_replication_type     = "ZRS"
  account_kind                 = "StorageV2"
  account_tier                 = "Standard"
  https_traffic_only_enabled   = true
  min_tls_version              = "TLS1_2"
  public_network_access_enabled = false
  infrastructure_encryption_enabled = true

  containers = {
    blob_container0 = {
      name = "private-blob-container"
    }
  }

  tags = var.tags
}
