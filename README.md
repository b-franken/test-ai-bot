# Azure Storage Account with Blob Container for Terraform State

AI-generated Terraform configuration for creating a storage account with blob storage capability and a container for Terraform state files.

## Resources

- **Resource Group**: dev-terraform-agents-rg
- **Storage Account**: devtfagentsstorage
- **Blob Container**: tfstate

## Azure Verified Modules

This configuration uses the following AVM modules:
- `Azure/avm-res-storage-storageaccount/azurerm` - Azure Storage Account Module

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
| resource_group_name | The name of the resource group | dev-terraform-agents-rg |
| storage_account_name | The name of the storage account | devtfagentsstorage |

## Outputs

| Name | Description |
|------|-------------|
| storage_account_id | Resource ID of the storage account |
| storage_account_primary_blob_endpoint | Primary Blob endpoint for the storage account |
| container_name | Name of the blob container for Terraform state files |
