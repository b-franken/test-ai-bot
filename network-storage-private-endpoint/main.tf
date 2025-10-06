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
}

resource "azurerm_resource_group" "this" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

module "vnet" {
  source  = "Azure/avm-res-network-virtualnetwork/azurerm"
  version = "~> 0.12"

  name       = "${var.environment}-vnet"
  location   = azurerm_resource_group.this.location
  parent_id  = azurerm_resource_group.this.id
  tags       = var.tags

  address_space = ["10.0.0.0/16"]
  subnets = {
    private_subnet = {
      name                             = "private"
      address_prefix                   = "10.0.1.0/24"
      private_endpoint_network_policies = "Disabled"
    }
  }
  enable_telemetry = true
}

module "storage" {
  source  = "Azure/avm-res-storage-storageaccount/azurerm"
  version = "~> 0.6"

  name                = "${var.environment}storageacct"
  resource_group_name = azurerm_resource_group.this.name
  location            = azurerm_resource_group.this.location

  account_tier             = "Standard"
  account_replication_type = "LRS"

  network_rules = {
    default_action             = "Deny"
    virtual_network_subnet_ids = [module.vnet.subnets["private_subnet"].resource_id]
  }

  private_endpoints = {
    private_endpoint = {
      subnet_resource_id          = module.vnet.subnets["private_subnet"].resource_id
      subresource_name            = "blob"
      private_dns_zone_group_name = "default"
    }
  }

  infrastructure_encryption_enabled = true
  enable_telemetry                  = true
  tags                              = var.tags
}
