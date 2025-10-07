provider "azurerm" {
  features {}
  resource_provider_registrations = "core"
  version = ">= 3.7.0, < 5.0.0"
}

terraform {
  required_version = ">= 1.0.0"
}

resource "azurerm_resource_group" "this" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

module "naming" {
  source                  = "Azure/naming/azurerm"
  unique-include-numbers = true
  unique-length          = 8
}

module "storage_account" {
  source = "Azure/avm-res-storage-storageaccount/azurerm"

  location                    = azurerm_resource_group.this.location
  name                        = module.naming.storage_account.name_unique
  resource_group_name         = azurerm_resource_group.this.name
  account_replication_type    = "ZRS"
  account_tier                = "Standard"
  account_kind                = "StorageV2"
  https_traffic_only_enabled  = true
  min_tls_version             = "TLS1_2"
  public_network_access_enabled = false
  infrastructure_encryption_enabled = true
  containers = {
    blob_container0 = {
      name = "blob-container-${module.naming.storage_account.name_unique}-0"
    }
  }
}

module "vnet" {
  source = "Azure/avm-res-network-virtualnetwork/azurerm"

  location      = azurerm_resource_group.this.location
  parent_id     = azurerm_resource_group.this.id
  address_space = ["10.0.0.0/16"]
  name          = "vnet-${module.naming.storage_account.name_unique}"
}
