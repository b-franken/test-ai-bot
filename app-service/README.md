# App Service - Terraform Configuration

AI-generated Terraform configuration for deploying an Azure App Service configured for a Linux-based web application.

## Resources

- **Resource Group**: `rg-terraform-example`
- **App Service Plan**: Linux-based service plan
- **App Service**: Linux-based web application

## Azure Verified Modules

This configuration uses the following AVM modules:
- `Azure/avm-res-web-site/azurerm` - Deploys a Linux-based App Service

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
| web_app_resource_id | The resource ID of the web app |
| web_app_name | The name of the web app |
| web_app_default_hostname | The default hostname of the web app |
