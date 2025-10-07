# Terraform Configuration for Azure Storage Account

This Terraform configuration deploys an Azure Storage Account with the following specifications:

- **Replication Type**: Zone-Redundant Storage (ZRS) for high availability.
- **Location**: West Europe.
- **Network Access**: Private access only (public network access disabled).
- **Security**: HTTPS traffic only with TLS 1.2 enforced.
- **Encryption**: Infrastructure encryption is enabled for additional security.

## Modules Used

- **Azure Naming Module**: Ensures consistent naming conventions across resources.
- **Azure Storage Account Module**: Deploys a storage account with specified configurations.

## Usage

1. Ensure you have Terraform installed and configured with access to your Azure account.
2. Update the `variables.tf` file with your desired environment suffix.
3. Run `terraform init` to initialize the configuration.
4. Run `terraform apply` to deploy the resources.

## Outputs

- `storage_account_resource_id`: The resource ID of the deployed storage account.
- `storage_account_name`: The name of the deployed storage account.
- `storage_account`: The full object of the deployed storage account, marked as sensitive.

## Notes

- This configuration uses the Azure Verified Modules (AVM) for deploying production-ready resources.
- Ensure that the outputs containing sensitive information are handled securely.
