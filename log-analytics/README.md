# Log Analytics Workspace - Terraform Configuration

AI-generated Terraform configuration for deploying a Log Analytics Workspace using Azure Verified Modules.

## Resources

- **Resource Group**: rg-terraform-example
- **Log Analytics Workspace**: loganalytics-workspace

## Azure Verified Modules

This configuration uses the following AVM module:
- `Azure/avm-res-operationalinsights-workspace/azurerm` - For deploying the Log Analytics Workspace

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
| log_analytics_workspace_name | Name of the Log Analytics Workspace | loganalytics-workspace |
| tags | Tags for all resources | ManagedBy: Terraform, Project: AI-Generated |

## Outputs

| Name | Description |
|------|-------------|
| log_analytics_workspace_id | Log Analytics Workspace Resource ID |
| log_analytics_workspace_name | Log Analytics Workspace Name |
