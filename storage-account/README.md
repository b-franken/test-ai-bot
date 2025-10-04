# Simple Storage Account - Terraform Configuration

AI-generated Terraform configuration for deploying a simple Azure Storage Account.

## Resources

- **Resource Group**: rg-simple-storage
- **Storage Account**: simplestoracct

## Azure Verified Modules

This configuration uses the following AVM module:
- `Azure/avm-res-storage-storageaccount/azurerm` - Deploys an Azure Storage Account with configurable parameters.

## Usage

```bash
# Initialize
terraform init

# Plan
terraform plan -out=tfplan

# Apply
terraform apply tfplan
```

## Variables

| Name | Description | Default |
|------|-------------|---------|
| location | Azure region | westeurope |
| resource_group_name | Name of the resource group | rg-simple-storage |
| storage_account_name | Name of the storage account | simplestoracct |
| account_tier | Defines the Tier to use for this storage account | Standard |
| account_replication_type | Defines the type of replication to use for this storage account | LRS |

## Outputs

| Name | Description |
|------|-------------|
| storage_account_resource_id | The resource ID of the created storage account. |
| storage_account_name | The name of the created storage account. |
| storage_account_primary_endpoint | The primary blob endpoint of the storage account. |
