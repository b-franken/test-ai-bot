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
  skip_provider_registration = true
  use_cli                   = false
  use_msi                   = false
}

resource "azurerm_resource_group" "this" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

module "vnet" {
  source  = "Azure/avm-res-network-virtualnetwork/azurerm"
  version = "~> 0.12.0"

  name      = "${var.environment}-vnet"
  location  = azurerm_resource_group.this.location
  parent_id = azurerm_resource_group.this.id
  enable_telemetry = true

  address_space = ["10.0.0.0/16"]
  subnets = {
    web = {
      name           = "web"
      address_prefix = "10.0.1.0/24"
    }
  }
}

module "storage" {
  source  = "Azure/avm-res-storage-storageaccount/azurerm"
  version = "~> 0.6.4"

  name                = "${var.environment}storageacct"
  resource_group_name = azurerm_resource_group.this.name
  location            = var.location
  enable_telemetry    = true

  account_tier             = "Standard"
  account_replication_type = "LRS"

  containers = {
    data = {
      name                  = "data"
      container_access_type = "private"
    }
  }
}

resource "azurerm_service_plan" "this" {
  name                = "${var.environment}-plan"
  location            = azurerm_resource_group.this.location
  resource_group_name = azurerm_resource_group.this.name
  os_type             = "Linux"
  sku_name            = "P1v2"
}

module "webapp" {
  source  = "Azure/avm-res-web-site/azurerm"
  version = "~> 0.19.1"

  name                     = "${var.environment}-webapp"
  resource_group_name      = azurerm_resource_group.this.name
  location                 = azurerm_resource_group.this.location
  service_plan_resource_id = azurerm_service_plan.this.id
  kind                     = "webapp"
  os_type                  = "Linux"
  enable_telemetry         = true

  storage_account_name = module.storage.name
}
