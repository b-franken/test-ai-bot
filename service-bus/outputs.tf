output "servicebus_namespace_id" {
  description = "The resource ID of the Service Bus Namespace."
  value       = module.servicebus.resource_id
  sensitive   = true
}
