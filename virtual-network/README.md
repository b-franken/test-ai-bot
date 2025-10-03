# Virtual Network - Terraform Configuration

AI-generated Terraform configuration for deploying a simple Azure Virtual Network.

## Resources

- **Resource Group**: rg-terraform-vnet
- **Virtual Network**: vnet-example

## Azure Verified Modules

This configuration uses the following AVM module:
- `avm/res/network/virtualnetwork` - For deploying a virtual network with customizable address space and optional subnets.

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
| location | Azure region for resources | westeurope |
| resource_group_name | Name of the resource group | rg-terraform-vnet |
| vnet_name | Name of the virtual network | vnet-example |
| tags | Tags for all resources | ManagedBy: Terraform, Project: AI-Generated |

## Outputs

| Name | Description |
|------|-------------|
| vnet_resource_id | The resource ID of the virtual network. |
| vnet_name | The name of the virtual network. |
