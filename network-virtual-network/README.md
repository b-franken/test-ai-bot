# Terraform Azure Virtual Network Module

This Terraform configuration deploys a virtual network in Azure with two subnets using the Azure Verified Modules (AVM) for production-ready infrastructure.

## Features
- **Virtual Network**: Configured with an address space of `10.0.0.0/16`.
- **Subnets**: Two subnets are created within the virtual network:
  - Subnet 1: `10.0.1.0/24`
  - Subnet 2: `10.0.2.0/24`
- **Region**: Deployed in `East US`.

## Usage

Ensure you have Terraform installed and configured to use Azure as the provider. Update the `environment` variable in `variables.tf` to reflect your deployment environment.

```hcl
terraform init
terraform plan
terraform apply
```

## Outputs
- `virtual_network_resource_id`: The resource ID of the virtual network.
- `subnet1_resource_id`: The resource ID of the first subnet.
- `subnet2_resource_id`: The resource ID of the second subnet.

## Prerequisites
- Azure subscription
- Proper IAM permissions to create resources

## Notes
This configuration uses the Azure Verified Modules for a reliable and tested deployment of Azure resources, with additional configurations for environment-specific tags and location parameters.