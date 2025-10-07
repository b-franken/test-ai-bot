# Azure Infrastructure with Storage Account - Terraform Configuration

AI-generated Terraform configuration for deploying a storage account along with a resource group, service plan, virtual network, and function app in Azure using Azure Verified Modules (AVM).

## Resources

- **Resource Group**: rg-terraform-example
- **Service Plan**: Linux plan for hosting applications
- **Virtual Network**: Network for managing internal communications
- **Function App**: Serverless compute service in Azure
- **Storage Account**: Securely store data in Azure with encryption enabled

## Azure Verified Modules

This configuration uses the following AVM modules:
- `Azure/avm-res-network-virtualnetwork/azurerm` - For creating a Virtual Network.
- `Azure/avm-res-web-site/azurerm` - For deploying a Function App.
- `Azure/avm-res-storage-storageaccount/azurerm` - For deploying a Storage Account with encryption.

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
| resource_group_name | Name of the resource group | rg-terraform-example |
| environment | Environment name (dev, test, prod) | dev |
| storage_account_name | Name of the storage account | stterraformexample |

## Outputs

| Name | Description |
|------|-------------|
| storage_account_id | The ID of the Storage Account. |
| storage_account_name | The name of the storage account. |
