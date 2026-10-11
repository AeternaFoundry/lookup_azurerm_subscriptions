data "azurerm_subscriptions" "subscriptions_lookup" {
  for_each = var.subscriptions_lookup

  display_name_contains = each.value.display_name_contains
  display_name_prefix   = each.value.display_name_prefix
}

