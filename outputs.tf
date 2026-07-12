output "bot_channel_web_chats_id" {
  description = "Map of id values across all bot_channel_web_chats, keyed the same as var.bot_channel_web_chats"
  value       = { for k, v in azurerm_bot_channel_web_chat.bot_channel_web_chats : k => v.id }
}
output "bot_channel_web_chats_bot_name" {
  description = "Map of bot_name values across all bot_channel_web_chats, keyed the same as var.bot_channel_web_chats"
  value       = { for k, v in azurerm_bot_channel_web_chat.bot_channel_web_chats : k => v.bot_name }
}
output "bot_channel_web_chats_location" {
  description = "Map of location values across all bot_channel_web_chats, keyed the same as var.bot_channel_web_chats"
  value       = { for k, v in azurerm_bot_channel_web_chat.bot_channel_web_chats : k => v.location }
}
output "bot_channel_web_chats_resource_group_name" {
  description = "Map of resource_group_name values across all bot_channel_web_chats, keyed the same as var.bot_channel_web_chats"
  value       = { for k, v in azurerm_bot_channel_web_chat.bot_channel_web_chats : k => v.resource_group_name }
}
output "bot_channel_web_chats_site" {
  description = "Map of site values across all bot_channel_web_chats, keyed the same as var.bot_channel_web_chats"
  value       = { for k, v in azurerm_bot_channel_web_chat.bot_channel_web_chats : k => v.site }
}

