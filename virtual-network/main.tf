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
  name     = "example-resources"
  location = var.location
  tags     = var.tags
}

module "naming" {
  source = "Azure/naming/azurerm"
  suffix = [var.environment]
}

module "vnet" {
  source         = "Azure/avm-res-network-virtualnetwork/azurerm"
  location       = azurerm_resource_group.this.location
  parent_id      = azurerm_resource_group.this.id
  address_space  = ["10.0.0.0/16"]
  enable_telemetry = true
  name           = module.naming.virtual_network.name
  tags           = var.tags
}

resource "azurerm_subnet" "subnet1" {
  name                 = "subnet1"
  resource_group_name  = azurerm_resource_group.this.name
  virtual_network_name = module.vnet.name
  address_prefixes     = ["10.0.1.0/24"]
}

resource "azurerm_subnet" "subnet2" {
  name                 = "subnet2"
  resource_group_name  = azurerm_resource_group.this.name
  virtual_network_name = module.vnet.name
  address_prefixes     = ["10.0.2.0/24"]
}
