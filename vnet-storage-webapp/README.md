# Virtual Network, Storage Account, and Web Application Configuration

AI-generated Terraform configuration for deploying a virtual network, a storage account, and a web application on Azure.

## Resources

- **Resource Group**: `rg-vnet-storage-webapp`
- **Virtual Network**: Provides network isolation and segmentation
- **Storage Account**: Used for data storage with private access
- **Web Application**: Deployed on Linux with connection to the storage account

## Azure Verified Modules

This configuration uses the following AVM modules:
- `Azure/avm-res-network-virtualnetwork/azurerm` - For virtual network
- `Azure/avm-res-storage-storageaccount/azurerm` - For storage account
- `Azure/avm-res-web-site/azurerm` - For web application

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
| resource_group_name | Name of the resource group | rg-vnet-storage-webapp |
| environment | Environment name (dev, test, prod) | dev |
| tags | Tags for all resources | ManagedBy: Terraform, Project: AI-Generated |

## Outputs

| Name | Description |
|------|-------------|
| vnet_resource_id | The resource ID of the virtual network |
| storage_account_id | The ID of the storage account |
| webapp_resource_id | The resource ID of the web application |

## Notes

- **Storage Encryption**: The current configuration does not include encryption settings for the storage account, as they were not supported directly through the AVM module. Please ensure to configure encryption manually if required for your use case.
