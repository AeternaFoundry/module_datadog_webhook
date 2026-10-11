variable "webhooks" {
  description = <<EOT
Map of webhooks, attributes below
Required:
    - name
    - url
Optional:
    - custom_headers
    - encode_as
    - payload
EOT

  type = map(object({
    name           = string
    url            = string
    custom_headers = optional(string)
    encode_as      = optional(string)
    payload        = optional(string)
  }))
}

