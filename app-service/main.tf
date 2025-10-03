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

resource "azurerm_service_plan" "this" {
  name                = "${var.environment}-plan"
  location            = azurerm_resource_group.this.location
  resource_group_name = azurerm_resource_group.this.name
  os_type             = "Linux"
  sku_name            = "P1v2"
}

module "web_app" {
  source  = "Azure/avm-res-web-site/azurerm"
  version = "~> 0.19"

  name                     = "${var.environment}-webapp"
  resource_group_name      = azurerm_resource_group.this.name
  location                 = azurerm_resource_group.this.location
  service_plan_resource_id = azurerm_service_plan.this.id
  kind                     = "webapp"
  os_type                  = "Linux"
  enable_telemetry         = true
}
