# Azure Key Vault - Terraform Configuration

AI-generated Terraform configuration for deploying an Azure Key Vault with RBAC authorization in West Europe.

## Resources

- **Resource Group**: `rg-terraform-keyvault`
- **Key Vault**: `kv-example`

## Azure Verified Modules

This configuration does not use a specific Azure Verified Module for Key Vault as it is not currently available. Instead, it uses the `azurerm_key_vault` resource directly.

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
| resource_group_name | Name of the resource group | rg-terraform-keyvault |
| key_vault_name | Name of the Key Vault | kv-example |
| tenant_id | Azure Active Directory Tenant ID | 00000000-0000-0000-0000-000000000000 |
| object_id | Object ID for Key Vault access policy | 00000000-0000-0000-0000-000000000000 |
| tags | Tags for all resources | ManagedBy: Terraform, Project: AI-Generated |

## Outputs

| Name | Description |
|------|-------------|
| key_vault_id | The ID of the Key Vault |
| key_vault_name | The name of the Key Vault |
| key_vault_uri | The URI of the Key Vault |
