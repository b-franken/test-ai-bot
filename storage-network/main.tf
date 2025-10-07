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
}

resource "azurerm_resource_group" "this" {
  name     = var.resource_group_name
  location = var.location
}

locals {
  storage_account_name = "${var.environment}${random_string.storage_account_suffix.result}"  # Ensure uniqueness
  container_name       = "blob-container-${var.environment}"
}

resource "random_string" "storage_account_suffix" {
  length  = 6
  special = false
  upper   = false
}

module "storage_account" {
  source              = "Azure/avm-res-storage-storageaccount/azurerm"
  location            = azurerm_resource_group.this.location
  name                = local.storage_account_name
  resource_group_name = azurerm_resource_group.this.name

  account_kind               = "StorageV2"
  account_replication_type   = "ZRS"
  account_tier               = "Standard"
  https_traffic_only_enabled = true
  min_tls_version            = "TLS1_2"
  public_network_access_enabled = false  # Restricted for security

  containers = {
    blob_container = {
      name = local.container_name
    }
  }

  network_rules = {
    default_action = "Deny"
  }

  infrastructure_encryption_enabled = true

  tags = {
    env   = var.environment
    owner = var.owner
    dept  = var.department
  }
}

module "vnet" {
  source        = "Azure/avm-res-network-virtualnetwork/azurerm"
  location      = azurerm_resource_group.this.location
  parent_id     = azurerm_resource_group.this.id
  address_space = ["10.0.0.0/16"]
  enable_telemetry = true
  
  name = "${var.environment}-vnet"
  tags = {
    env   = var.environment
    owner = var.owner
    dept  = var.department
  }
}