# Storage Account with Blob Storage - Terraform Configuration

AI-generated Terraform configuration for deploying a storage account with blob storage in Azure.

## Resources

- **Resource Group**: rg-storage-example
- **Storage Account**: Used for storing Terraform state files with blob storage.

## Azure Verified Modules

This configuration uses the following AVM modules:
- `avm-res-storage-storageaccount` - For creating and managing Azure Storage Accounts.

## Usage

```bash
# Initialize
terraform init

# Plan
terraform plan -out=tfplan

# Apply
echo "y" | terraform apply tfplan
```

## Variables

| Name | Description | Default |
|------|-------------|---------|
| location | Azure region | westeurope |
| resource_group_name | Name of the resource group | rg-storage-example |
| storage_account_name | Name of the storage account | storageacctdev |
| tags | Tags for all resources | ManagedBy="Terraform", Environment="Development", Project="AI-Generated" |

## Outputs

| Name | Description |
|------|-------------|
| storage_account_id | The ID of the storage account |
| storage_account_name | The name of the storage account |
| storage_account_primary_blob_endpoint | The primary blob endpoint for the storage account |
