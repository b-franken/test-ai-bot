# Azure Storage Account Terraform Module

This Terraform configuration deploys a production-ready Azure Storage Account using the Azure Verified Modules (AVM) for Terraform. The configuration is designed to meet high availability and security standards by utilizing Zone-Redundant Storage (ZRS) replication, enforcing HTTPS-only access, and setting a minimum TLS version of 1.2.

## Features
- **Location**: Deploys resources in the specified Azure region.
- **Replication**: Uses ZRS for high availability.
- **Security**: Enforces HTTPS-only access and sets minimum TLS version to 1.2.
- **Network**: Disables public network access for enhanced security.
- **Storage**: Configures a private blob container.
- **Encryption**: Enables infrastructure encryption for storage accounts.

## Usage

```hcl
terraform {
  required_version = ">= 1.0.0"
}

provider "azurerm" {
  features {}
  resource_provider_registrations = "core"
}

resource "azurerm_resource_group" "this" {
  name     = var.resource_group_name
  location = var.location
}

module "storage_account" {
  source  = "Azure/avm-res-storage-storageaccount/azurerm"

  location                     = azurerm_resource_group.this.location
  name                         = var.storage_account_name
  resource_group_name          = azurerm_resource_group.this.name
  account_replication_type     = "ZRS"
  account_kind                 = "StorageV2"
  account_tier                 = "Standard"
  https_traffic_only_enabled   = true
  min_tls_version              = "TLS1_2"
  public_network_access_enabled = false
  infrastructure_encryption_enabled = true

  containers = {
    blob_container0 = {
      name = "private-blob-container"
    }
  }

  tags = var.tags
}
```

## Inputs
- `location`: The Azure region where resources will be deployed.
- `resource_group_name`: The name of the resource group.
- `tags`: A map of tags to assign to the resources.
- `storage_account_name`: The desired name for the storage account.

## Outputs
- `storage_account_id`: The ID of the storage account.
- `storage_account_name`: The name of the storage account.

## Notes
This configuration uses the Azure Verified Modules (AVM) to ensure best practices and compliance with Azure standards. Adjust the `tags` variable as needed to fit your organizational requirements.
