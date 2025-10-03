# Virtual Network - Terraform Configuration

AI-generated Terraform configuration for deploying a simple Virtual Network in Azure.

## Resources

- **Resource Group**: rg-terraform-example
- **Virtual Network**: A basic setup with a single address space.

## Azure Verified Modules

This configuration uses the following AVM modules:
- `avm-res-network-virtualnetwork` - For creating a Virtual Network in Azure

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
| vnet_name | Name of the virtual network | vnet-simple |
| address_space | The address space for the virtual network | ["10.0.0.0/16"] |
| tags | Tags for all resources | ManagedBy: Terraform, Project: AI-Generated |

## Outputs

| Name | Description |
|------|-------------|
| vnet_resource_id | Resource ID of the virtual network |
| vnet_name | Name of the virtual network |
