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
  use_cli                    = false
  use_msi                    = false
}

resource "azurerm_resource_group" "this" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

module "virtual_network" {
  source  = "Azure/avm-res-network-virtualnetwork/azurerm"
  version = "~> 0.12"

  name          = var.vnet_name
  parent_id     = azurerm_resource_group.this.id
  location      = var.location
  address_space = ["10.0.0.0/16"]

  enable_telemetry = true
  tags             = var.tags
}
