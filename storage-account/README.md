# Azure Storage Account - Terraform Configuration

AI-generated Terraform configuration for deploying a simple Azure Storage Account using Azure Verified Modules.

## Resources

- **Resource Group**: `rg-storage-account`
- **Storage Account**: A simple storage account configured within the specified resource group.

## Azure Verified Modules

This configuration uses the following AVM module:
- `Azure/avm-res-storage-storageaccount/azurerm` - Azure Storage Account module

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
| resource_group_name | Name of the resource group | rg-storage-account |
| storage_account_name | Name of the storage account | stgacctexample |
| tags | Tags for all resources | ManagedBy: Terraform, Project: AI-Generated |

## Outputs

| Name | Description |
|------|-------------|
| storage_account_id | The ID of the Storage Account. |
| storage_account_name | The name of the Storage Account. |
| storage_account_primary_blob_endpoint | The primary Blob endpoint of the Storage Account. |