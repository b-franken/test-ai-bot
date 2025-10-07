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
  tags     = var.tags
}

module "naming" {
  source        = "Azure/naming/azurerm"
  suffix        = [var.environment]
  unique-length = 5
}

module "vnet" {
  source           = "Azure/avm-res-network-virtualnetwork/azurerm"
  location         = azurerm_resource_group.this.location
  name             = module.naming.api_management.name  # Assuming api_management is used for naming
  address_space    = ["10.10.0.0/16"]
  enable_telemetry = true
  parent_id        = azurerm_resource_group.this.id
}
