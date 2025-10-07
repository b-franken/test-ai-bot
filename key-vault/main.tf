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

resource "azurerm_key_vault" "this" {
  name                        = var.key_vault_name
  location                    = azurerm_resource_group.this.location
  resource_group_name         = azurerm_resource_group.this.name
  tenant_id                   = var.tenant_id
  sku_name                    = "standard"
  purge_protection_enabled    = true
  soft_delete_retention_days  = 90

  access_policy {
    tenant_id = var.tenant_id
    object_id = var.object_id

    key_permissions = ["Get", "List"]
    secret_permissions = ["Get", "List"]
    certificate_permissions = ["Get", "List"]
  }

  tags = var.tags
}
