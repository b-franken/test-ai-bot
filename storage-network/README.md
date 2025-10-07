# Terraform Configuration for Azure Storage Account and Virtual Network

This Terraform configuration deploys an Azure Storage Account with Zone-Redundant Storage (ZRS) and a Virtual Network in the East US region. The configuration uses Azure Verified Modules (AVM) to ensure best practices and production readiness.

## Features

- **Storage Account**
  - Account Kind: StorageV2
  - Replication Type: ZRS (Zone-Redundant Storage)
  - HTTPS Traffic Only
  - Minimum TLS Version: 1.2
  - Public Network Access Disabled for security
  - Blob Containers for storage
  - Infrastructure Encryption Enabled

- **Virtual Network**
  - Address Space: 10.0.0.0/16
  - Located in East US

## Usage

1. Ensure you have Terraform installed and configured to use Azure.
2. Update the `variables.tf` file with your desired values.
3. Run `terraform init` to initialize the configuration.
4. Run `terraform apply` to deploy the resources.

## Modules Used

- Azure/avm-res-storage-storageaccount/azurerm
- Azure/avm-res-network-virtualnetwork/azurerm

## Naming Conventions

The configuration uses a local naming convention to ensure unique and consistent naming across resources. Adjust the `environment` variable to differentiate between environments (e.g., dev, prod).

## Outputs

- `storage_account_id`: The ID of the deployed storage account.
- `vnet_id`: The ID of the deployed virtual network.
