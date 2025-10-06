# Azure Web App Deployment with VNet Integration

AI-generated Terraform configuration for deploying a Linux App Service Plan with a Web App connected to a Virtual Network.

## Resources

- **Resource Group**: rg-terraform-example
- **Service Plan**: Linux App Service Plan
- **Web App**: Linux Web App
- **Virtual Network**: Custom VNet with an app subnet

## Azure Verified Modules

This configuration uses the following AVM modules:
- `Azure/avm-res-web-site/azurerm` - Deploys Azure Web App
- `Azure/avm-res-network-virtualnetwork/azurerm` - Deploys Azure Virtual Network

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

## Outputs

| Name | Description |
|------|-------------|
| vnet_resource_id | The Virtual Network resource ID |
| web_app_resource_id | The Web App resource ID |
| subnet_resource_id | The Subnet resource ID for the app |
