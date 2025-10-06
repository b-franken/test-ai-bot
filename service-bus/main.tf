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
  use_cli                         = false
  use_msi                         = false
  # Ensure Azure provider is configured correctly.
}

resource "azurerm_resource_group" "this" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

module "servicebus" {
  source  = "Azure/avm-res-servicebus-namespace/azurerm"
  version = "~> 0.4"

  name                = var.servicebus_namespace_name
  location            = azurerm_resource_group.this.location
  resource_group_name = azurerm_resource_group.this.name
  sku                 = var.sku
  enable_telemetry    = true
}
