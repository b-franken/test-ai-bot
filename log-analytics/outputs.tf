output "log_analytics_workspace_id" {
  description = "Log Analytics Workspace Resource ID"
  value       = module.log_analytics_workspace.resource_id
  sensitive   = true
}

output "log_analytics_workspace_name" {
  description = "Log Analytics Workspace Name"
  value       = module.log_analytics_workspace.resource.name
  sensitive   = true
}
