# Python Function App with VNet Integration - Terraform Configuration

AI-generated Terraform configuration for deploying a Python Function App securely connected to a Virtual Network.

## Resources

- **Resource Group**: `rg-terraform-example`
- **Function App**: Python Function App with VNet integration
- **Virtual Network**: VNet with a subnet configured for the Function App

## Azure Verified Modules

This configuration uses the following AVM modules:
- `Azure/avm-res-web-site/azurerm` - Deploys the Function App
- `Azure/avm-res-network-virtualnetwork/azurerm` - Deploys the Virtual Network

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
| storage_account_name | The name of the Storage Account to use with Function App | storageaccountname |

## Outputs

| Name | Description |
|------|-------------|
| function_app_resource_id | Resource ID of the Function App |
| vnet_resource_id | Resource ID of the Virtual Network |

## Notes

- Ensure to choose between `storage_account_name` or `storage_key_vault_secret_id` for the Function App configuration to avoid invalid argument combinations.
