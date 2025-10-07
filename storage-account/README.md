# Storage Account - Terraform Configuration

AI-generated Terraform configuration for a production-ready Azure Storage Account in East US.

## Resources

- **Resource Group**: `rg-storage-account`
- **Storage Account**: Configured for high availability with ZRS, private blob container, HTTPS only, and TLS 1.2 enforced.

## Azure Verified Modules

This configuration uses the following AVM module:
- `Azure/avm-res-storage-storageaccount/azurerm` - Provides the storage account with the required configurations.

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

| Name                  | Description                          | Default          |
|-----------------------|--------------------------------------|------------------|
| location              | Azure region                         | East US          |
| resource_group_name   | Name of the resource group           | rg-storage-account |
| storage_account_name  | Name of the storage account          | stgacctexample   |
| tags                  | Tags for all resources               | Environment: Production, ManagedBy: Terraform |

## Outputs

| Name                  | Description                         |
|-----------------------|-------------------------------------|
| storage_account_id    | The ID of the Storage Account       |
| storage_account_name  | The name of the Storage Account     |
| primary_blob_endpoint | The primary Blob endpoint of the Storage Account |
