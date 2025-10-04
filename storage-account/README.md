# Storage Account - Terraform Configuration

AI-generated Terraform configuration for deploying a simple Azure Storage Account using Azure Verified Modules.

## Resources

- **Resource Group**: `rg-terraform-example`
- **Storage Account**: Simple storage account setup with standard performance tier and locally-redundant storage replication.

## Azure Verified Modules

This configuration uses the following AVM modules:
- `Azure/avm-res-storage-storageaccount/azurerm` - To deploy a storage account with standard configuration.

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
| location | Azure region where the resources will be deployed. | westeurope |
| resource_group_name | The name of the resource group. | rg-terraform-example |
| storage_account_name | The name of the storage account. | storaccountexample |
| account_tier | The performance tier of the storage account. | Standard |
| account_replication_type | The replication strategy to use for this storage account. | LRS |

## Outputs

| Name | Description |
|------|-------------|
| storage_account_id | The ID of the Storage Account. |
| storage_account_name | The name of the Storage Account. |
| storage_account_fqdn | The FQDN for the storage services. |
