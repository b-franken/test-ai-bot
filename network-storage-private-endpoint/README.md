# Azure VNet and Storage Account with Private Endpoint - Terraform Configuration

AI-generated Terraform configuration for creating a Virtual Network (VNet) and a Storage Account with a Private Endpoint connection in Azure.

## Resources

- **Resource Group**: rg-terraform-example
- **Virtual Network**: Creates a virtual network with a private subnet.
- **Storage Account**: A storage account configured to allow access only through a private endpoint.

## Azure Verified Modules

This configuration uses the following AVM modules:
- `Azure/avm-res-network-virtualnetwork/azurerm` - Virtual Network
- `Azure/avm-res-storage-storageaccount/azurerm` - Storage Account

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
| tags | Tags for all resources | ManagedBy: Terraform, Project: AI-Generated |

## Outputs

| Name | Description |
|------|-------------|
| vnet_resource_id | The resource ID of the virtual network. |
| storage_account_id | The resource ID of the storage account. |
| private_endpoint_ids | The private endpoint resource IDs. |
