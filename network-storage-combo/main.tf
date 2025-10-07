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
}

module "storage_account" {
  source                        = "Azure/avm-res-storage-storageaccount/azurerm"
  location                      = azurerm_resource_group.this.location
  name                          = "${var.environment}-storage-${random_string.this.result}"
  resource_group_name           = azurerm_resource_group.this.name
  account_kind                  = "StorageV2"
  account_replication_type      = "ZRS"
  account_tier                  = "Standard"
  https_traffic_only_enabled    = true
  min_tls_version               = "TLS1_2"
  public_network_access_enabled = false
  containers = {
    blob_container0 = {
      name = "blob-container-${random_string.this.result}-0"
    }
  }
  infrastructure_encryption_enabled = true
}

module "virtual_network" {
  source        = "Azure/avm-res-network-virtualnetwork/azurerm"
  location      = azurerm_resource_group.this.location
  parent_id     = azurerm_resource_group.this.id
  address_space = ["10.0.0.0/16"]
  enable_telemetry = true
  name          = "${var.environment}-vnet"
}
