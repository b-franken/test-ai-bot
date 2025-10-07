# Terraform Configuration for Azure Virtual Network

This Terraform configuration deploys a Virtual Network in Azure using the Azure Verified Modules (AVM). The configuration is designed to be simple and production-ready, leveraging best practices for naming and resource management.

## Resources Created

- Azure Resource Group
- Azure Virtual Network with a specified address space

## Prerequisites

- Terraform v1.9 or later
- AzureRM Provider v4.0 or later

## Usage

1. Define the required variables in `variables.tf` or provide them through a Terraform variables file.
2. Run `terraform init` to initialize the configuration.
3. Run `terraform apply` to create the resources.

## Variables

- `resource_group_name`: The name of the resource group where the virtual network will be deployed.
- `location`: The Azure region for resource deployment, default is "West Europe".
- `environment`: The environment name used as a suffix for naming resources.
- `tags`: Tags to be applied to all resources.

## Outputs

- `virtual_network_id`: The ID of the created virtual network.

## Module Source

The virtual network module source is `Azure/avm-res-network-virtualnetwork/azurerm`, ensuring the use of official and verified modules for Azure infrastructure.

## Notes

- The configuration includes telemetry enabled by default.
- The naming module is used to ensure unique and consistent naming across resources.

