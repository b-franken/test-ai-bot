# Azure Storage Account - Terraform Configuration

AI-generated Terraform configuration for deploying a simple Azure Storage Account using Azure Verified Modules.

## Resources

- **Resource Group**: rg-terraform-example
- **Storage Account**: Storage account for general-purpose storage

## Azure Verified Modules

This configuration uses the following AVM modules:
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
| location | Azure region for resources | westeurope |
| resource_group_name | Name of the resource group | rg-terraform-example |
| storage_account_name | Name of the storage account | storageacctexample |
| tags | Tags for all resources | ManagedBy: Terraform, Project: AI-Generated |

## Outputs

| Name | Description |
|------|-------------|
| storage_account_id | The storage account resource ID |
| storage_account_name | The storage account name |
| storage_account_primary_blob_endpoint | The primary Blob endpoint of the storage account |

