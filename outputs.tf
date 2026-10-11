output "webhooks_id" {
  description = "Map of id values across all webhooks, keyed the same as var.webhooks except keys with no id are omitted"
  value       = { for k, v in datadog_webhook.webhooks : k => v.id if v.id != null && length(v.id) > 0 }
}
output "webhooks_custom_headers" {
  description = "Map of custom_headers values across all webhooks, keyed the same as var.webhooks except keys with no custom_headers are omitted"
  value       = { for k, v in datadog_webhook.webhooks : k => v.custom_headers if v.custom_headers != null && length(v.custom_headers) > 0 }
}
output "webhooks_encode_as" {
  description = "Map of encode_as values across all webhooks, keyed the same as var.webhooks except keys with no encode_as are omitted"
  value       = { for k, v in datadog_webhook.webhooks : k => v.encode_as if v.encode_as != null && length(v.encode_as) > 0 }
}
output "webhooks_name" {
  description = "Map of name values across all webhooks, keyed the same as var.webhooks except keys with no name are omitted"
  value       = { for k, v in datadog_webhook.webhooks : k => v.name if v.name != null && length(v.name) > 0 }
}
output "webhooks_payload" {
  description = "Map of payload values across all webhooks, keyed the same as var.webhooks except keys with no payload are omitted"
  value       = { for k, v in datadog_webhook.webhooks : k => v.payload if v.payload != null && length(v.payload) > 0 }
}
output "webhooks_url" {
  description = "Map of url values across all webhooks, keyed the same as var.webhooks except keys with no url are omitted"
  value       = { for k, v in datadog_webhook.webhooks : k => v.url if v.url != null && length(v.url) > 0 }
}

