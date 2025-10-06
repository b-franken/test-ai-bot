output "vnet_resource_id" {
  description = "The Virtual Network resource ID"
  value       = module.vnet.resource_id
  sensitive   = true
}

output "web_app_resource_id" {
  description = "The Web App resource ID"
  value       = module.web_app.resource_id
  sensitive   = true
}

output "subnet_resource_id" {
  description = "The Subnet resource ID for the app"
  value       = module.vnet.subnets["app_subnet"].resource_id
  sensitive   = true
}

