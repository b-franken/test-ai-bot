# Terraform Configuration for Azure Storage Account and Virtual Network

This Terraform configuration deploys an Azure Storage Account with ZRS replication and a Virtual Network in the East US region. The configuration uses Azure Verified Modules (AVM) to ensure production-ready deployments.

## Features

- **Storage Account**
  - Replication Type: ZRS (Zone-redundant storage)
  - Account Tier: Standard
  - Account Kind: StorageV2
  - HTTPS Traffic Only: Enabled
  - Minimum TLS Version: 1.2
  - Public Network Access: Disabled (for enhanced security)
  - Infrastructure Encryption: Enabled
  - Includes a blob container for storage

- **Virtual Network**
  - Address Space: 10.0.0.0/16

## Prerequisites

- Terraform CLI version >= 1.0.0
- Azure subscription with appropriate permissions

## Usage

1. Clone the repository and navigate to the directory containing the Terraform files.
2. Initialize Terraform:
   ```bash
   terraform init
   ```
3. Review the plan:
   ```bash
   terraform plan
   ```
4. Apply the configuration:
   ```bash
   terraform apply
   ```

## Notes

- The configuration uses the `azurerm` provider version `>= 3.7.0, < 5.0.0`.
- The `resource_provider_registrations` is set to "core" to ensure proper registration of resource providers.
- The naming module is used to generate unique names for resources based on the configuration.

## Outputs

- `storage_account_id`: The ID of the created storage account.
- `vnet_id`: The ID of the created virtual network.

## Tags

Resources are tagged with environment, owner, and department information for easy identification and management.
