resource "datadog_webhook" "webhooks" {
  for_each = var.webhooks

  name           = each.value.name
  url            = each.value.url
  custom_headers = each.value.custom_headers
  encode_as      = each.value.encode_as
  payload        = each.value.payload
}

