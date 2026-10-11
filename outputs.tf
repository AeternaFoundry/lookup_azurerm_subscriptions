output "subscriptions_lookup_id" {
  description = "Map of id values across all subscriptions_lookup, keyed the same as var.subscriptions_lookup"
  value       = { for k, v in data.azurerm_subscriptions.subscriptions_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "subscriptions_lookup_display_name_contains" {
  description = "Map of display_name_contains values across all subscriptions_lookup, keyed the same as var.subscriptions_lookup"
  value       = { for k, v in data.azurerm_subscriptions.subscriptions_lookup : k => v.display_name_contains if v.display_name_contains != null && length(v.display_name_contains) > 0 }
}
output "subscriptions_lookup_display_name_prefix" {
  description = "Map of display_name_prefix values across all subscriptions_lookup, keyed the same as var.subscriptions_lookup"
  value       = { for k, v in data.azurerm_subscriptions.subscriptions_lookup : k => v.display_name_prefix if v.display_name_prefix != null && length(v.display_name_prefix) > 0 }
}
output "subscriptions_lookup_subscriptions" {
  description = "Map of subscriptions values across all subscriptions_lookup, keyed the same as var.subscriptions_lookup"
  value       = { for k, v in data.azurerm_subscriptions.subscriptions_lookup : k => v.subscriptions if v.subscriptions != null && length(v.subscriptions) > 0 }
}

