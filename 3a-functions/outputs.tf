output "current_user_objectid" {
  value = data.azurerm_client_config.current.object_id
}

output "current_user_block" {
  value = data.azurerm_client_config.current
}