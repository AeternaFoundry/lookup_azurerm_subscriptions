variable "subscriptions_lookup" {
  description = <<EOT
Map of subscriptions_lookup, attributes below
Optional:
    - display_name_contains
    - display_name_prefix
EOT

  type = map(object({
    display_name_contains = optional(string)
    display_name_prefix   = optional(string)
  }))
}

