terraform {
  required_version = ">= 1.9.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.71"
    }
  }
}

provider "azurerm" {
  features {}
  resource_provider_registrations = "core"
  use_cli                          = false
  use_msi                          = false
}

resource "azurerm_resource_group" "this" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

module "storage_account" {
  source  = "Azure/avm-res-storage-storageaccount/azurerm"
  version = "~> 0.6"

  name                = var.storage_account_name
  resource_group_name = azurerm_resource_group.this.name
  location            = azurerm_resource_group.this.location
  enable_telemetry    = true

  account_kind             = "StorageV2"
  account_tier             = "Standard"
  account_replication_type = "ZRS"
  https_traffic_only_enabled = true
  min_tls_version          = "TLS1_2"

  containers = {
    private_container = {
      name          = "private"
      public_access = "None"
    }
  }

  network_rules = {
    default_action             = "Deny"
    bypass                     = ["AzureServices"]
    ip_rules                   = []
    virtual_network_subnet_ids = []
  }

  infrastructure_encryption_enabled = true
}
