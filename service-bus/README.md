# Service Bus Namespace - Terraform Configuration

AI-generated Terraform configuration for deploying an Azure Service Bus Namespace.

## Resources

- **Resource Group**: rg-servicebus-example
- **Service Bus Namespace**: sb-namespace-example

## Azure Verified Modules

This configuration uses the following AVM module:
- `Azure/avm-res-servicebus-namespace/azurerm` - For creating a Service Bus Namespace

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
| location | Azure region | eastus |
| resource_group_name | Name of the resource group | rg-servicebus-example |
| servicebus_namespace_name | Name of the Service Bus Namespace | sb-namespace-example |
| sku | The SKU of the Service Bus Namespace | Standard |

## Outputs

| Name | Description |
|------|-------------|
| servicebus_namespace_id | The resource ID of the Service Bus Namespace |
