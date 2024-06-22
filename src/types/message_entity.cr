# https://core.telegram.org/bots/api#messageentity

require "./user"

class MessageEntity
  JSON.mapping(
    type: String,
    offset: Int32,
    length: Int32,
    url: String?,
    user: User?,
    language: String?,
    custom_emoji_id: String?
  )
end
