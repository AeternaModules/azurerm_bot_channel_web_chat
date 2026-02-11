variable "bot_channel_web_chats" {
  description = <<EOT
Map of bot_channel_web_chats, attributes below
Required:
    - bot_name
    - location
    - resource_group_name
Optional:
    - site (block):
        - endpoint_parameters_enabled (optional)
        - name (required)
        - storage_enabled (optional)
        - user_upload_enabled (optional)
EOT

  type = map(object({
    bot_name            = string
    location            = string
    resource_group_name = string
    site = optional(object({
      endpoint_parameters_enabled = optional(bool)
      name                        = string
      storage_enabled             = optional(bool) # Default: true
      user_upload_enabled         = optional(bool) # Default: true
    }))
  }))
}

