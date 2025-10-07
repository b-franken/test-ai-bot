# Terraform Configuration for Azure Storage Account and Virtual Network

This Terraform configuration deploys an Azure Storage Account with ZRS replication and a Virtual Network with a specified address space.

## Resources

- **Storage Account**: Configured with ZRS replication, HTTPS traffic only, TLS 1.2 minimum version, and infrastructure encryption enabled.
- **Virtual Network**: Configured with an address space of `10.0.0.0/16`.

## Usage

1. **Variables**: Update the `variables.tf` file with your desired values for `resource_group_name`, `location`, and `environment`.
2. **Initialize Terraform**: Run `terraform init` to initialize the Terraform working directory.
3. **Plan**: Run `terraform plan` to see the changes that will be applied.
4. **Apply**: Run `terraform apply` to create the resources.

## Notes

- The configuration uses the Azure Verified Modules (AVM) for both the storage account and virtual network, ensuring production-ready deployments.
- The `random_string` resource is used to generate unique names for the storage account containers.

## Requirements

- Terraform 1.9.x
- AzureRM Provider 4.x

## Tags

The resources are tagged with environment, owner, and department information for better management and cost tracking.

## Security Considerations

- Public network access is disabled for the storage account to enhance security.
