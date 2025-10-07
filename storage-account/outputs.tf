output "storage_account_resource_id" {
  value     = module.this.resource_id
  sensitive = true
}

output "storage_account_name" {
  value     = module.this.name
  sensitive = false
}

output "storage_account" {
  value     = module.this.resource
  sensitive = true
}
