# __generated__ by OpenTofu
# Please review these resources and move them into your main configuration files.

# __generated__ by OpenTofu from "/subscriptions/<subscription_id>/resourceGroups/import-test-rg"
resource "azurerm_resource_group" "rg" {
  location   = var.location
  managed_by = null
  name       = "${var.name_prefix}-rg"
  tags       = {}
}
