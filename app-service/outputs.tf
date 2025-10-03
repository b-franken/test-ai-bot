output "web_app_resource_id" {
  description = "The resource ID of the web app."
  value       = module.web_app.resource_id
  sensitive   = true
}

output "web_app_resource_uri" {
  description = "The URI of the web app."
  value       = module.web_app.resource_uri
  sensitive   = true
}

output "web_app_name" {
  description = "The name of the web app."
  value       = module.web_app.name
  sensitive   = true
}
