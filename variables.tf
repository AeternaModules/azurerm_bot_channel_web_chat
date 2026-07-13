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
    site = optional(list(object({
      endpoint_parameters_enabled = optional(bool)
      name                        = string
      storage_enabled             = optional(bool)
      user_upload_enabled         = optional(bool)
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.bot_channel_web_chats : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.bot_channel_web_chats : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.bot_channel_web_chats : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.bot_channel_web_chats : (
        length(v.bot_name) >= 4
      )
    ])
    error_message = "[from validate.BotName: invalid when len(value) < 4]"
  }
  validation {
    condition = alltrue([
      for k, v in var.bot_channel_web_chats : (
        length(v.bot_name) <= 42
      )
    ])
    error_message = "[from validate.BotName: invalid when len(value) > 42]"
  }
  validation {
    condition = alltrue([
      for k, v in var.bot_channel_web_chats : (
        v.site == null || alltrue([for item in v.site : (length(item.name) > 0)])
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

