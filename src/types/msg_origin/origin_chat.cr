# https://core.telegram.org/bots/api#messageoriginchat

require "../chat"

class OriginChat
  JSON.mapping(
    type: String?,
    date: Int64,
    sender_chat: Chat,
    author_signature: String?
  )
end
