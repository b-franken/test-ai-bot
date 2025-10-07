# Terraform Configuration for Azure Storage Account

This Terraform configuration deploys an Azure Storage Account with the following characteristics:

- **Replication Type**: Zone-redundant storage (ZRS) for high availability.
- **Location**: East US.
- **Network Access**: Private access only (public network access disabled).
- **Security**: HTTPS traffic only with a minimum TLS version of 1.2.
- **Account Type**: StorageV2 with Standard performance tier.
- **Blob Containers**: Configured with unique names using a random string for uniqueness.
- **Encryption**: Infrastructure encryption enabled for storage account.

## Prerequisites

- Ensure you have the necessary permissions to create resources in the specified Azure subscription.
- Terraform installed on your local machine.

## Usage

1. **Initialize Terraform**: Run `terraform init` to initialize the working directory.
2. **Plan the Deployment**: Execute `terraform plan` to review the resources that will be created.
3. **Apply the Configuration**: Use `terraform apply` to create the resources.

## Variables

- `resource_group_name`: The name of the resource group where the storage account will be deployed.
- `location`: The Azure region for deployment (default is East US).
- `environment`: The environment suffix for naming (default is "dev").

## Outputs

- `storage_account_id`: The ID of the created storage account.
- `storage_account_primary_blob_endpoint`: The primary blob endpoint of the storage account.

## Notes

This configuration uses the Azure Verified Modules (AVM) for deploying a storage account, ensuring best practices and compliance with Azure standards.
