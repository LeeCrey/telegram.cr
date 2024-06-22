# https://core.telegram.org/bots/api#switchinlinequerychosenchat

class SwitchInlineQueryChosenChat
  JSON.mapping(
    query: String?,
    allow_user_chats: Bool?,
    allow_bot_chats: Bool?,
    allow_group_chats: Bool?,
    allow_channel_chats: Bool?
  )
end
