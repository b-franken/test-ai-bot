# Terraform Storage Account Configuration

AI-generated Terraform configuration for creating an Azure Storage Account with a blob container specifically for Terraform state files.

## Resources

- **Resource Group**: `rg-terraform-storage`
- **Storage Account**: Standard LRS replication with HTTPS only access
- **Blob Container**: Private access blob container for Terraform state files

## Azure Verified Modules

This configuration uses the following AVM module:
- `avm-res-storage-storageaccount` - For creating and managing a storage account in Azure.

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
| resource_group_name | Name of the resource group | rg-terraform-storage |
| storage_account_name | Name of the storage account | stterraformstate |
| tags | Tags for all resources | ManagedBy: Terraform, Project: TerraformStateStorage, Environment: dev |

## Outputs

| Name | Description |
|------|-------------|
| storage_account_id | The ID of the Storage Account |
| storage_account_name | The name of the Storage Account |
| container_name | The name of the blob container for Terraform state files |
