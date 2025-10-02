# Storage Account - Terraform Configuration

AI-generated Terraform configuration for setting up an Azure Storage Account with a blob container specifically for Terraform state files.

## Resources

- **Resource Group**: Provisioned for organizing resources
- **Storage Account**: Configured for blob storage with Standard LRS replication
- **Blob Container**: Specifically for Terraform state files

## Azure Verified Modules

This configuration uses the following AVM modules:
- `avm/res/storage/storage-account` - For creating the Azure Storage Account with specified configurations

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
| storage_account_name | Name of the storage account | stterraformexample |

## Outputs

| Name | Description |
|------|-------------|
| storage_account_id | The ID of the storage account |
| storage_account_name | The name of the storage account |
| containers | Created containers within the storage account |
