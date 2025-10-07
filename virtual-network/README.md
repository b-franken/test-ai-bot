# Terraform Configuration for Azure Virtual Network

This Terraform configuration deploys a virtual network in the East US region with an address space of `10.0.0.0/16`. It includes two subnets within the virtual network.

## Resources

- **Virtual Network**: Configured using the Azure Verified Module for network virtual networks.
- **Subnets**: Two subnets are created within the virtual network.

## Module Usage

The configuration uses the Azure Verified Module (AVM) for creating the virtual network, ensuring best practices and production readiness.

## Prerequisites

- Terraform CLI version `~> 1.9`
- AzureRM provider version `~> 4.0`

## Usage

1. Initialize Terraform:
   ```bash
   terraform init
   ```

2. Apply the configuration:
   ```bash
   terraform apply
   ```

3. Review the outputs for the resource IDs and names of the created resources.

## Outputs

- `virtual_network_resource_id`: The resource ID of the virtual network.
- `virtual_network_name`: The name of the virtual network.
- `subnet1_resource_id`: The resource ID of the first subnet.
- `subnet2_resource_id`: The resource ID of the second subnet.

## Notes

- The naming module is used to ensure unique and consistent naming across resources.
- The configuration adheres to the 2025 standards for Terraform and Azure provider versions.

## Improvements

- Tags can be applied to manage resources better.
- A variable for location is used to avoid hardcoding values, making the configuration flexible.