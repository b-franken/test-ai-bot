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

resource "azurerm_resource_group" "this" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

resource "azurerm_service_plan" "this" {
  name                = "${var.environment}-plan"
  location            = azurerm_resource_group.this.location
  resource_group_name = azurerm_resource_group.this.name
  os_type             = "Linux"
  sku_name            = "P1v2"
}

module "vnet" {
  source  = "Azure/avm-res-network-virtualnetwork/azurerm"
  version = "~> 0.12"

  name          = "${var.environment}-vnet"
  parent_id     = azurerm_resource_group.this.id
  location      = var.location
  address_space = ["10.0.0.0/16"]
  enable_telemetry = true

  subnets = {
    app_subnet = {
      name             = "app-subnet"
      address_prefixes = ["10.0.1.0/24"]
    }
  }
}

module "function_app" {
  source  = "Azure/avm-res-web-site/azurerm"
  version = "~> 0.19"

  name                          = "${var.environment}-functionapp"
  resource_group_name           = azurerm_resource_group.this.name
  location                      = azurerm_resource_group.this.location
  service_plan_resource_id      = azurerm_service_plan.this.id
  kind                          = "functionapp"
  os_type                       = "Linux"
  enable_telemetry              = true
  virtual_network_subnet_id     = module.vnet.subnets["app_subnet"].resource_id
  storage_account_name          = var.storage_account_name
}

module "storage_account" {
  source  = "Azure/avm-res-storage-storageaccount/azurerm"
  version = "~> 0.6"

  name                = var.storage_account_name
  resource_group_name = azurerm_resource_group.this.name
  location            = azurerm_resource_group.this.location
  enable_telemetry    = true

  account_tier             = "Standard"
  account_replication_type = "LRS"
  infrastructure_encryption_enabled = true
}
