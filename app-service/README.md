# App Service with Linux Web App - Terraform Configuration

AI-generated Terraform configuration for deploying an Azure App Service configured as a Linux-based web application.

## Resources

- **Resource Group**: rg-terraform-example
- **App Service Plan**: Configured for Linux
- **Linux Web App**: Deployed under the App Service Plan

## Azure Verified Modules

This configuration uses the following AVM modules:
- `Azure/avm-res-web-site/azurerm` - Deploys an Azure App Service configured as a Linux-based web application

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
| web_app_resource_id | The resource ID of the web app. |
| web_app_resource_uri | The URI of the web app. |
| web_app_name | The name of the web app. |
