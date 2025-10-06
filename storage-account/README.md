# Azure Storage Account - Terraform Configuration

AI-generated Terraform configuration for deploying a simple Azure Storage Account using Azure Verified Modules.

## Resources

- **Resource Group**: `rg-terraform-example`
- **Storage Account**: Standard, LRS replicated, StorageV2 kind

## Azure Verified Modules

This configuration uses the following AVM modules:
- `Azure/avm-res-storage-storageaccount/azurerm` - For creating a storage account with recommended practices.

## Usage

This configuration is designed to be deployed using Terraform with the following steps:

1. **Initialize Terraform**:
   ```bash
   terraform init
   ```

2. **Plan the Deployment**:
   ```bash
   terraform plan -out=tfplan
   ```

3. **Apply the Deployment**:
   ```bash
   terraform apply tfplan
   ```

## Variables

| Name | Description | Default |
|------|-------------|---------|
| location | Azure region | `westeurope` |
| resource_group_name | Name of the resource group | `rg-terraform-example` |
| storage_account_name | Name of the storage account | `storageacct` |
| tags | Tags for all resources | `ManagedBy: Terraform, Project: AI-Generated` |

## Outputs

| Name | Description |
|------|-------------|
| storage_account_resource_id | The resource ID of the storage account |
| storage_account_name | The name of the storage account |
| storage_account_primary_blob_endpoint | The primary blob endpoint of the storage account |

## Security Considerations

Ensure output values that are sensitive are marked as such to prevent unintentional exposure. The configuration includes recommended settings to enhance security, such as enabling infrastructure encryption.
