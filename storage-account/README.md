# Storage Account - Terraform Configuration

AI-generated Terraform configuration for deploying an Azure Storage Account using the Azure Verified Module.

## Resources

- **Resource Group**: `rg-storage-example` located in the specified Azure region with user-defined tags.
- **Storage Account**: Configured with standard tier and locally-redundant storage, utilizing private container access.

## Azure Verified Modules

This configuration leverages the following AVM modules:
- **Storage Account Module**: `Azure/avm-res-storage-storageaccount/azurerm` - To deploy a storage account with specified configurations.

## Usage

Follow these steps to deploy the storage account:

```bash
# Initialize the Terraform working directory
terraform init

# Generate and show the execution plan
terraform plan -out=tfplan

# Apply the changes required to reach the desired state
terraform apply tfplan
```

## Variables

| Name | Description | Default |
|------|-------------|---------|
| location | Azure region | westeurope |
| resource_group_name | Name of the resource group | rg-storage-example |
| storage_account_name | Name of the storage account | stexampleaccount |
| account_tier | The tier of the storage account | Standard |
| account_replication_type | The replication type of the storage account | LRS |
| tags | Tags for all resources | ManagedBy: Terraform, Project: AI-Generated |

## Outputs

| Name | Description |
|------|-------------|
| storage_account_id | The ID of the Storage Account |
| storage_account_name | The name of the Storage Account |