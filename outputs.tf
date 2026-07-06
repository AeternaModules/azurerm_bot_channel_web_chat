output "bot_channel_web_chats" {
  description = "All bot_channel_web_chat resources"
  value       = azurerm_bot_channel_web_chat.bot_channel_web_chats
}
output "bot_channel_web_chats_bot_name" {
  description = "List of bot_name values across all bot_channel_web_chats"
  value       = [for k, v in azurerm_bot_channel_web_chat.bot_channel_web_chats : v.bot_name]
}
output "bot_channel_web_chats_location" {
  description = "List of location values across all bot_channel_web_chats"
  value       = [for k, v in azurerm_bot_channel_web_chat.bot_channel_web_chats : v.location]
}
output "bot_channel_web_chats_resource_group_name" {
  description = "List of resource_group_name values across all bot_channel_web_chats"
  value       = [for k, v in azurerm_bot_channel_web_chat.bot_channel_web_chats : v.resource_group_name]
}
output "bot_channel_web_chats_site" {
  description = "List of site values across all bot_channel_web_chats"
  value       = [for k, v in azurerm_bot_channel_web_chat.bot_channel_web_chats : v.site]
}

